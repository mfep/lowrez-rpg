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
			if (GameObj.Disposed) {
				return Decision.NoMove;
			}
			Decision decision;
			var pos = GameObj.GetComponent<DiscreteTransform> ().Position;
			var playerObject = GameObj.ParentScene.FindGameObject<PlayerMovement> ();
			var playerPos = playerObject.GetComponent<DiscreteTransform> ().Position;

			if (GameObj.GetComponent<DiscreteTransform>().IsPlayerVisible (WatchDistanceSqr, out int dx, out int dy)) {
				if (pos.Manhattan (playerPos) == 1) {
					GameObj.GetComponent<CombatStats> ().FightWith (playerObject.GetComponent<CombatStats> ());
					GameObj.GetComponent<DiscreteTransform> ().AttackCurve (new Point2 (dx, dy));
					return Decision.Fight;
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

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				GameObj.GetComponent<CombatStats> ().Death += OnDeath;
			}
		}

		private void OnDeath ()
		{
			GameObj.Dispose ();
		}

		public void OnShutdown (ShutdownContext context)
		{
			GameObj.GetComponent<CombatStats> ().Death -= OnDeath;
		}
	}
}