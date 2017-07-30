namespace LowResRoguelike
{
	public interface ICmpTurnAction
	{
		int Initiative { get; }
		Decision MakeDecision ();
	}
}