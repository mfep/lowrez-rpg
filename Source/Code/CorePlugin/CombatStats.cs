using Duality;

namespace LowResRoguelike
{
	public class CombatStats : Component, ICmpInitializable
	{
		public int Attack { get; set; }
		public int Defense { get; set; }
		public int Damage { get; set; }
		public int DamageReduction { get; set; }
		public int MaxHealth { get; set; }
		public int CurrentHealth => currentHealth;

		[DontSerialize] private int currentHealth;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				currentHealth = MaxHealth;
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public void FightWith (CombatStats other)
		{
			CombatTurn (this, other);
			if (other.currentHealth > 0) {
				CombatTurn (other, this);
			}
		}

		private void ChangeHealth (int amount)
		{
			currentHealth += amount;
		}

		private static void CombatTurn (CombatStats attacker, CombatStats defender)
		{
			var attackScore = attacker.Attack + MathF.Rnd.Next (1, 11);
			if (attackScore <= defender.Defense) {
				return;
			}
			defender.ChangeHealth (-attacker.Damage);
			Log.Game.Write($"{attacker.GameObj.Name} (score: {attackScore}) attacks {defender.GameObj.Name} (score: {defender.Defense}) and damages {attacker.Damage}");
		}
	}
}