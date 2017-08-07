using Duality;

namespace LowResRoguelike
{
	public class EnemyAgent : Component, ICmpTurnAction
	{
		public int Initiative => 0;

		public Decision MakeDecision ()
		{
			return Decision.LeftMove;
		}
	}
}