using Duality;
using Duality.Components.Renderers;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(SpriteRenderer))]
	public class VisibilityController : Component, ICmpInitializable
	{
		public bool RemainsSeen { get; set; }

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				GameObj.GetComponent<SpriteRenderer> ().Active = false;
				UpdateVisibility ();
				TurnActionManager.PlayerMoved += UpdateVisibility;
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
			TurnActionManager.PlayerMoved -= UpdateVisibility;
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
			return MapExtensions.IsVisible (playerPos, currentPos);
		}

		public void UpdateVisibility ()
		{
			var spriteRenderer = GameObj.GetComponent<SpriteRenderer> ();
			if (RemainsSeen && spriteRenderer.Active) {
				return;
			}
			spriteRenderer.Active = IsPlayerVisible (256, out int _, out int _);
		}
	}
}