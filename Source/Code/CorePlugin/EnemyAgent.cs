using System;
using System.Runtime.InteropServices.ComTypes;
using Duality;
using Duality.Components.Renderers;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(DiscreteTransform))]
	[RequiredComponent(typeof(CombatStats))]
	public class EnemyAgent : Component, ICmpTurnAction, ICmpInitializable
	{
		public int WatchDistanceSqr { get; set; }
		public int Damage { get; set; }
		public int Initiative => 0;

		public Decision MakeDecision ()
		{
			Decision decision;
			var pos = GameObj.GetComponent<DiscreteTransform> ().Position;
			var playerObject = GameObj.ParentScene.FindGameObject<PlayerMovement> ();
			var playerPos = playerObject.GetComponent<DiscreteTransform> ().Position;

			if (IsPlayerVisible (out int dx, out int dy)) {
				if (pos.Manhattan (playerPos) == 1) {
					GameObj.GetComponent<CombatStats> ().FightWith (playerObject.GetComponent<CombatStats> ());
					return Decision.NoMove;
				}
				if (dx != 0 && dy != 0) {
					if (MathF.Rnd.NextBool ()) {
						decision = dx > 0 ? Decision.RightMove : Decision.LeftMove;
					} else {
						decision = dy > 0 ? Decision.DownMove : Decision.UpMove;
					}
				} else if (dx != 0) {
					decision = dx > 0 ? Decision.RightMove : Decision.LeftMove;
				} else {
					decision = dy > 0 ? Decision.DownMove : Decision.UpMove;
				}
			} else {
				decision = (Decision)MathF.Rnd.Next (5);
			}
			if (!DiscreteTransform.IsBlocked (pos + decision.ToDirection ())) {
				return decision;
			}

			for (var i = 0; i < 5; i++) {
				var d = (Decision)i;
				if (!DiscreteTransform.IsBlocked (pos + d.ToDirection ())) {
					return d;
				}
			}
			return Decision.NoMove;
		}

		private bool IsPlayerVisible (out int dx, out int dy)
		{
			var playerPos = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().Position;
			var currentPos = GameObj.GetComponent<DiscreteTransform> ().Position;
			dx = playerPos.X - currentPos.X;
			dy = playerPos.Y - currentPos.Y;
			var dstSqr = dx * dx + dy * dy;
			if (dstSqr > WatchDistanceSqr) {
				return false;
			}
			return MapExtensions.IsVisible (currentPos, playerPos);
		}

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				TurnActionManager.PlayerMoved += PlayerMovedCallback;
			}
		}

		private void PlayerMovedCallback ()
		{
			GameObj.GetComponent<SpriteRenderer> ().Active = IsPlayerVisible (out int _, out int _);
		}

		public void OnShutdown (ShutdownContext context)
		{
		}
	}
}