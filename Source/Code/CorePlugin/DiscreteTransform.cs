using System;
using System.Linq;
using Duality;
using Duality.Components;
using Duality.Resources;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(Transform))]
	public class DiscreteTransform : Component, ICmpInitializable, ICmpUpdatable
	{
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
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public void MoveTo (Point2 pos)
		{
			Position = pos;
			isAttacking = false;
		}

		public void MoveBy (Point2 delta)
		{
			Position += delta;
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
				go = discreteTransform.GameObj;
				return discreteTransform.position == coord;
			});
			blockerObject = go;
			return result;
		}
	}
}