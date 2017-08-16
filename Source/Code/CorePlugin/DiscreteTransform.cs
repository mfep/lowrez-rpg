using System.Linq;
using Duality;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Resources;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(Transform))]
	[RequiredComponent(typeof(SpriteRenderer))]
	public class DiscreteTransform : Component, ICmpInitializable, ICmpUpdatable
	{
		public bool Blocker { get; set; }

		public const float Grid = 4.0f;
		private const float AttackTime = 0.3f;

		[DontSerialize] private bool isAttacking;
		[DontSerialize] private float attackStartTime;
		[DontSerialize] private Point2 attackDir;

		public Point2 Position
		{
			get => position;
			set
			{
				position = value;
				UpdatePosition ();
			}
		}

		private Point2 position;

		public void OnInit (InitContext context)
		{
			UpdatePosition ();
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				TurnActionManager.PlayerMoved += ControlVisibility;
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
			TurnActionManager.PlayerMoved -= ControlVisibility;
		}

		public void MoveTo (Point2 pos)
		{
			Position = pos;
			isAttacking = false;
		}

		public void MoveBy (Point2 delta)
		{
			Position += delta;
			UpdateFacing (delta);
			isAttacking = false;
		}

		public void OnUpdate ()
		{
			if (isAttacking) {
				var currentTime = (float)Time.GameTimer.TotalSeconds;
				var t = (currentTime - attackStartTime) / AttackTime;
				if (t >= 1f) {
					isAttacking = false;
					UpdatePosition ();
					return;
				}
				var dirVect = new Vector2 (attackDir.X, attackDir.Y).Normalized;
				var originalPos = new Vector2 (position.X * Grid, position.Y * Grid);

				GameObj.Transform.MoveToAbs (originalPos + dirVect * MathF.Sin (t * MathF.Pi) * Grid * 0.5f);
			}
			GameObj.Transform.Pos = new Vector3(GameObj.Transform.Pos.X, GameObj.Transform.Pos.Y, isAttacking ? -1f : 0f);
		}

		public void AttackCurve (Point2 dir)
		{
			isAttacking = true;
			attackDir = dir;
			attackStartTime = (float)Time.GameTimer.TotalSeconds;
		}

		private void UpdatePosition ()
		{
			GameObj.Transform.MoveToAbs (new Vector2 (position.X * Grid, position.Y * Grid));
		}

		public static bool IsBlocked (Point2 coord)
		{
			var map = Scene.Current.FindComponent<MapGenerator> ()?.GeneratedMap;
			if (map == null) {
				return false;
			}
			if (map.At (coord) == TileType.Solid) {
				return true;
			}
			return Scene.Current.FindComponents<DiscreteTransform> ().Any (discreteTransform => discreteTransform.position == coord);
		}

		public static bool IsBlocked (Point2 coord, ref GameObject blockerObject)
		{
			var map = Scene.Current.FindComponent<MapGenerator> ()?.GeneratedMap;
			if (map == null) {
				return false;
			}
			if (map.At (coord) == TileType.Solid) {
				return true;
			}
			GameObject go = null;
			var result = Scene.Current.FindComponents<DiscreteTransform> ().Any (discreteTransform =>
			{
				if (!discreteTransform.Blocker) {
					return false;
				}
				go = discreteTransform.GameObj;
				return discreteTransform.position == coord;
			});
			blockerObject = go;
			return result;
		}

		public bool IsPlayerVisible (int watchDistSqr, out int dx, out int dy)
		{
			if (GameObj.Disposed) {
				dx = 0;
				dy = 0;
				return false;
			}
			var playerPos = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().Position;
			var currentPos = GameObj.GetComponent<DiscreteTransform> ().Position;
			dx = playerPos.X - currentPos.X;
			dy = playerPos.Y - currentPos.Y;
			var dstSqr = dx * dx + dy * dy;
			if (dstSqr > watchDistSqr) {
				return false;
			}
			return MapExtensions.IsVisible (currentPos, playerPos);
		}

		public void UpdateFacing (Point2 delta)
		{
			if (delta.X == 0) {
				return;
			}
			var spriteRenderer = GameObj.GetComponent<SpriteRenderer> ();
			spriteRenderer.Flip = delta.X > 0 ? SpriteRenderer.FlipMode.None : SpriteRenderer.FlipMode.Horizontal;
			var rect = spriteRenderer.Rect;
			rect.X = delta.X > 0 ? 0f : -4f;
			spriteRenderer.Rect = rect;
		}

		private void ControlVisibility ()
		{
			GameObj.GetComponent<SpriteRenderer> ().Active = IsPlayerVisible (256, out int _, out int _);
		}
	}
}