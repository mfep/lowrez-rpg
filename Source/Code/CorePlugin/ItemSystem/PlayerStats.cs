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
			var originalItem = items[(int)item.ItemSlot];
			items[(int)item.ItemSlot] = item;
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
			items = new ItemInstance[(int)ItemSlot.Last + 1];
			items[(int)ItemSlot.Weapon] = new ItemInstance (ItemSlot.Weapon, Material.Wooden, WeaponType.Axe);
			items[(int)ItemSlot.Shield] = new ItemInstance (ItemSlot.Shield, Material.No);
			items[(int)ItemSlot.Armor] = new ItemInstance (ItemSlot.Armor, Material.No);
			items[(int)ItemSlot.Helmet] = new ItemInstance (ItemSlot.Helmet, Material.No);
		}

		private void UpdateCombatStats ()
		{
			var combatStats = GameObj.GetComponent<CombatStats> ();
			combatStats.Attack = baseAttack + items.Sum (item => item.AttackModifier);
			combatStats.Defense = baseDefense + items.Sum (item => item.DefenseModifier);
			combatStats.Damage = items[(int)ItemSlot.Weapon].Damage;
			combatStats.DamageReduction = items.Sum (item => item.DamageReductionModifier);
			combatStats.MaxHealth = baseMaxHealth + items.Sum (item => item.MaxHealthModifier);
		}
	}
}
