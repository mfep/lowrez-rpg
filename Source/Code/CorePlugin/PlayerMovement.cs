using Duality;
using Duality.Input;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(DiscreteTransform))]
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
			if (DiscreteTransform.IsBlocked (dir + discretePos)) {
				return Decision.NotDecided;
			}

			return decision;
		}
	}
}