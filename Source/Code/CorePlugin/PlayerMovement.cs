using Duality;
using Duality.Input;

namespace LowResRoguelike
{
	public class PlayerMovement : Component, ICmpTurnAction
	{
		public int Initiative => 10;

		public Decision MakeDecision ()
		{
			if (DualityApp.Keyboard.KeyHit (Key.Left)) {
				return Decision.LeftMove;
			}
			if (DualityApp.Keyboard.KeyHit (Key.Up)) {
				return Decision.UpMove;
			}
			if (DualityApp.Keyboard.KeyHit (Key.Right)) {
				return Decision.RightMove;
			}
			if (DualityApp.Keyboard.KeyHit (Key.Down)) {
				return Decision.DownMove;
			}

			return Decision.NotDecided;
		}
	}
}