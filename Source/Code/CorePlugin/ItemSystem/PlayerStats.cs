﻿using System.Linq;
using Duality;

namespace LowResRoguelike.ItemSystem
{
	[RequiredComponent(typeof(CombatStats))]
	public class PlayerStats : Component, ICmpInitializable
	{
		public int BaseAttack { get; set; }
		public int BaseDefense { get; set; }
		public int BaseDamage { get; set; }
		public int BaseDamageReduction { get; set; }
		public int BaseMaxHealth { get; set; }

		[DontSerialize] private ItemInstance[] items;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				AddDefaultItems ();
				UpdateCombatStats ();
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public void EquipItem (ItemInstance item)
		{
			items[(int)item.ItemSlot] = item;
			UpdateCombatStats ();
		}

		private void AddDefaultItems ()
		{
			items = new ItemInstance[(int)ItemSlot.Last + 1];
			items[(int)ItemSlot.Weapon] = new ItemInstance (ItemSlot.Weapon, Material.Wood, WeaponType.Axe);
			items[(int)ItemSlot.Shield] = new ItemInstance (ItemSlot.Shield, Material.None);
			items[(int)ItemSlot.Armor] = new ItemInstance (ItemSlot.Armor, Material.None);
			items[(int)ItemSlot.Helmet] = new ItemInstance (ItemSlot.Helmet, Material.None);
		}

		private void UpdateCombatStats ()
		{
			var combatStats = GameObj.GetComponent<CombatStats> ();
			combatStats.Attack = BaseAttack + items.Sum (item => item.AttackModifier);
			combatStats.Defense = BaseDefense + items.Sum (item => item.DefenseModifier);
			combatStats.Damage = BaseDamage + items.Sum (item => item.DamageModifier);
			combatStats.DamageReduction = BaseDamageReduction + items.Sum (item => item.DamageReductionModifier);
			combatStats.MaxHealth = BaseMaxHealth + items.Sum (item => item.MaxHealthModifier);
		}
	}
}