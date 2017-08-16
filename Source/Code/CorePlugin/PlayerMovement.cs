using Duality;
using Duality.Input;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(DiscreteTransform))]
	[RequiredComponent(typeof(CombatStats))]
	public class PlayerMovement : Component, ICmpTurnAction
	{
		public int Initiative => 10;

		public Decision MakeDecision ()
		{
			var decision = Decision.NotDecided;
			if (DualityApp.Keyboard.KeyHit (Key.Left)) {
				decision = Decision.LeftMove;
			}
			if (DualityApp.Keyboard.KeyHit (Key.Up)) {
				decision = Decision.UpMove;
			}
			if (DualityApp.Keyboard.KeyHit (Key.Right)) {
				decision = Decision.RightMove;
			}
			if (DualityApp.Keyboard.KeyHit (Key.Down)) {
				decision = Decision.DownMove;
			}

			var dir = decision.ToDirection ();
			var discretePos = GameObj.GetComponent<DiscreteTransform> ().Position;
			GameObject blocker = null;
			if (decision != Decision.NotDecided && DiscreteTransform.IsBlocked (dir + discretePos, ref blocker)) {
				var enemy = blocker?.GetComponent<CombatStats> ();
				if (enemy != null) {
					GameObj.GetComponent<CombatStats> ().FightWith (enemy);
					var discreteTransform = GameObj.GetComponent<DiscreteTransform> ();
					discreteTransform.AttackCurve (dir);
					discreteTransform.UpdateFacing (dir);
					return Decision.Fight;
				}
				return Decision.NotDecided;
			}

			return decision;
		}
	}
}