using System;
using Duality;
using Duality.Resources;
using LowResRoguelike.ItemSystem;

namespace LowResRoguelike
{
	[ExecutionOrder(ExecutionRelation.After, typeof(PlayerStats))]
	public class CombatStats : Component, ICmpInitializable
	{
		public event Action Death;

		public int Attack { get; set; }
		public int Defense { get; set; }
		public WeaponDamage Damage { get; set; }
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

		public void ChangeHealth (int amount)
		{
			currentHealth += amount;
			currentHealth = Math.Max (0, currentHealth);
			currentHealth = MathF.Min (currentHealth, MaxHealth);
			if (currentHealth == 0) {
				Death?.Invoke ();
			}
		}

		public void RefillHealth ()
		{
			currentHealth = MaxHealth;
		}

		private static void CombatTurn (CombatStats attacker, CombatStats defender)
		{
			const int critMargin = 10;
			const int attackDiceSides = 16;

			var attackScore = attacker.Attack + MathF.Rnd.Next (1, attackDiceSides + 1);
			var result = AttackResult.Defended;
			var damage = 0;
			if (attackScore > defender.Defense) {
				var isCrit = attackScore - defender.Defense > critMargin;
				result = AttackResult.Hit;

				damage = attacker.Damage.Roll ();
				if (isCrit) {
					damage *= 2;
					result = AttackResult.CriticalHit;
				}
				damage = Math.Max (damage - defender.DamageReduction, 0);
				if (damage == 0) {
					result = AttackResult.ArmorZeroed;
				}
			}
			defender.ChangeHealth (-damage);
			//Log.Game.Write($"{attacker.GameObj.Name} (score: {attackScore}) attacks {defender.GameObj.Name} (score: {defender.Defense}) and damages {damage}");
			var isPlayerAttack = attacker.GameObj.GetComponent<PlayerMovement>() != null;
			Scene.Current.FindComponent<UiRenderer>().RequestCombatUi(new CombatUiData(isPlayerAttack, attackScore, defender.Defense, damage, defender.MaxHealth, defender.currentHealth, result));
			switch (result) {
				case AttackResult.Defended:
					AudioPlayer.PlaySfx (Sfx.Blocked);
					break;
				case AttackResult.Hit:
				case AttackResult.CriticalHit:
					if (defender.currentHealth == 0) {
						AudioPlayer.PlaySfx (Sfx.Kill);
					} else {
						AudioPlayer.PlaySfx (Sfx.Hit);
					}
					break;
				case AttackResult.ArmorZeroed:
					AudioPlayer.PlaySfx (Sfx.ArmorBlocked);
					break;
				default:
					throw new ArgumentOutOfRangeException ();
			}
		}
	}
}