using System.Collections.Generic;
using System.Linq;
using Duality;
using LowResRoguelike.GamePrefs;

namespace LowResRoguelike.ItemSystem
{
	[RequiredComponent(typeof(CombatStats))]
	public class PlayerStats : Component, ICmpInitializable
	{
		[DontSerialize] private int baseAttack;
		[DontSerialize] private int baseDefense;
		[DontSerialize] private int baseMaxHealth;

		[DontSerialize] private ItemInstance[] items;
		public IEnumerable<ItemInstance> Items => items;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				LoadPrefs ();
				AddDefaultItems ();
				UpdateCombatStats ();
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public ItemInstance EquipItem (ItemInstance item)
		{
			var originalItem = items[(int)item.ItemClass.Slot];
			items[(int)item.ItemClass.Slot] = item;
			UpdateCombatStats ();
			return originalItem;
		}

		private void LoadPrefs ()
		{
			var prefs = PrefLoader.PlayerPrefs;
			baseAttack = prefs.BaseAttack;
			baseDefense = prefs.BaseDefense;
			baseMaxHealth = prefs.BaseMaxHealth;
		}

		private void AddDefaultItems ()
		{
			items = ItemGenerator.GetPlayerDefaultItems ();
		}

		private void UpdateCombatStats ()
		{
			var combatStats = GameObj.GetComponent<CombatStats> ();
			combatStats.Attack = baseAttack + items.Sum (item => item.AttackMod);
			combatStats.Defense = baseDefense + items.Sum (item => item.DefenseMod);
			combatStats.Damage = items[(int)ItemSlot.WeaponHand].Damage;
			combatStats.DamageReduction = items.Sum (item => item.DamageReductionMod);
			combatStats.MaxHealth = baseMaxHealth + items.Sum (item => item.MaxHealthMod);
		}
	}
}
