namespace LowResRoguelike
{
	public class CombatUiData
	{
		public CombatUiData (bool playerAttacks, int attackScore, int defenseScore, int damage, int maxHealth, int remainingHealth, AttackResult attackResult)
		{
			PlayerAttacks = playerAttacks;
			AttackScore = attackScore;
			DefenseScore = defenseScore;
			Damage = damage;
			MaxHealth = maxHealth;
			RemainingHealth = remainingHealth;
			AttackResult = attackResult;
		}

		public bool PlayerAttacks { get; }
		public int AttackScore { get; }
		public int DefenseScore { get; }
		public int Damage { get; }
		public int MaxHealth { get; }
		public int RemainingHealth { get; }
		public AttackResult AttackResult { get; }
	}
}