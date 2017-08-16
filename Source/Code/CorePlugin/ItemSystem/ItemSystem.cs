using System;
using Duality;

namespace LowResRoguelike.ItemSystem
{
	public enum ItemSlot
	{
		Weapon,
		Shield, // defense +
		Armor, // damagereduction 0
		Helmet, // health +
		Last = Helmet
	}

	public enum Material
	{
		None     = 0,
		Wood     = 1,
		Bronze   = 2,
		Iron     = 3,
		Steel    = 4,
		Mithril  = 5,
		RedSteel = 6,
		Last = RedSteel
	}

	public enum WeaponType
	{
		ShortSword, // attack ++, defense -, damage 0
		LongSword, // attack 0, defense +, damage 0
		Axe, // attack +, defense -, damage +
		Mace, // attack 0, defense -, damage ++
		BattleStaff, // attack 0, defense ++, damage -
		Last = BattleStaff
	}

	public class ItemInstance
	{
		public ItemInstance (ItemSlot itemSlot, Material material)
		{
			ItemSlot = itemSlot;
			Material = material;
			if (itemSlot == ItemSlot.Weapon) {
				throw new Exception ();
			}
		}

		public ItemInstance (ItemSlot itemSlot, Material material, WeaponType weaponType)
		{
			ItemSlot = itemSlot;
			Material = material;
			WeaponType = weaponType;
		}

		public ItemSlot ItemSlot { get; }
		public Material Material { get; }
		public WeaponType WeaponType { get; }

		public int AttackModifier => CalculateAttackModifier ();
		public int DefenseModifier => CalculateDefenseModifier ();
		public int DamageModifier => CalculateDamageModifier ();
		public int DamageReductionModifier => CalculateDamageReductionModifier ();
		public int MaxHealthModifier => CalculateMaxHealthModifier ();

		public override string ToString ()
		{
			if (ItemSlot != ItemSlot.Weapon) {
				return $"{Material} {ItemSlot}";
			}
			return $"{Material} {WeaponType}";
		}

		private int CalculateAttackModifier ()
		{
			if (ItemSlot != ItemSlot.Weapon) {
				return 0;
			}
			int weaponAttackBase;
			switch (WeaponType) {
				case WeaponType.ShortSword:
					weaponAttackBase = 3;
					break;
				case WeaponType.LongSword:
					weaponAttackBase = 2;
					break;
				case WeaponType.Axe:
					weaponAttackBase = 2;
					break;
				case WeaponType.Mace:
					weaponAttackBase = 1;
					break;
				case WeaponType.BattleStaff:
					weaponAttackBase = 1;
					break;
				default:
					throw new ArgumentOutOfRangeException ();
			}
			return weaponAttackBase * (int)Material;
		}

		private int CalculateDefenseModifier ()
		{
			int defenseBase;
			switch (ItemSlot) {
				case ItemSlot.Weapon:
					switch (WeaponType) {
						case WeaponType.ShortSword:
							defenseBase = 0;
							break;
						case WeaponType.LongSword:
							defenseBase = 2;
							break;
						case WeaponType.Axe:
							defenseBase = 0;
							break;
						case WeaponType.Mace:
							defenseBase = 0;
							break;
						case WeaponType.BattleStaff:
							defenseBase = 3;
							break;
						default:
							throw new ArgumentOutOfRangeException ();
					}
					break;
				case ItemSlot.Shield:
					defenseBase = 3;
					break;
				default:
					defenseBase = 0;
					break;
			}
			return defenseBase * (int)Material;
		}

		private int CalculateDamageModifier ()
		{
			if (ItemSlot != ItemSlot.Weapon) {
				return 0;
			}
			int damageBase;
			switch (WeaponType) {
				case WeaponType.ShortSword:
					damageBase = 2;
					break;
				case WeaponType.LongSword:
					damageBase = 2;
					break;
				case WeaponType.Axe:
					damageBase = 3;
					break;
				case WeaponType.Mace:
					damageBase = 4;
					break;
				case WeaponType.BattleStaff:
					damageBase = 1;
					break;
				default:
					throw new ArgumentOutOfRangeException ();
			}
			return damageBase * (int)Material;
		}

		private int CalculateDamageReductionModifier ()
		{
			if (ItemSlot != ItemSlot.Armor) {
				return 0;
			}
			return (int)Material;
		}

		private int CalculateMaxHealthModifier ()
		{
			if (ItemSlot != ItemSlot.Helmet) {
				return 0;
			}
			return  2 * (int)Material;
		}
	}

	public static class ItemGenerator
	{
		public static ItemInstance Generate (int lowestMaterial, int highestMaterial)
		{
			var slot = (ItemSlot)MathF.Rnd.Next (0, (int)ItemSlot.Last + 1);
			WeaponType weaponType = 0;
			if (slot == ItemSlot.Weapon) {
				weaponType = (WeaponType)MathF.Rnd.Next (0, (int)WeaponType.Last + 1);
			}
			var material = (Material)MathF.Rnd.Next (lowestMaterial, highestMaterial + 1);
			return new ItemInstance(slot, material, weaponType);
		}
	}
}
