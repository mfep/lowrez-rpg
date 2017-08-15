using System;
using Duality;
using Duality.Resources;

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
		}

		private void ChangeHealth (int amount)
		{
			currentHealth += amount;
		}

		private static void CombatTurn (CombatStats attacker, CombatStats defender)
		{
			var attackScore = attacker.Attack + MathF.Rnd.Next (1, 11);
			var result = AttackResult.Defended;
			int damage = 0;
			if (attackScore > defender.Defense) {
				result = AttackResult.Hit;

				const int DiceSides = 6;
				for (int i = 0; i < attacker.Damage; i++) {
					damage += MathF.Rnd.Next (1, DiceSides + 1);
				}
				damage = Math.Max (damage - defender.DamageReduction, 0);
				if (damage == 0) {
					result = AttackResult.ArmorZeroed;
				}
			}
			defender.ChangeHealth (-damage);
			Log.Game.Write($"{attacker.GameObj.Name} (score: {attackScore}) attacks {defender.GameObj.Name} (score: {defender.Defense}) and damages {damage}");
			Scene.Current.FindComponent<UiRenderer>().RequestCombatUi(new CombatUiData(attacker.GameObj.GetComponent<PlayerMovement>() != null, attackScore, defender.Defense, damage, defender.MaxHealth, defender.currentHealth, result));
		}
	}
}