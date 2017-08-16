using System;

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
		Staff, // attack 0, defense ++, damage -
		Last = Staff
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
		public WeaponDamage Damage => GetDamage ();
		public int DamageReductionModifier => CalculateDamageReductionModifier ();
		public int MaxHealthModifier => CalculateMaxHealthModifier ();

		public override string ToString ()
		{
			return $"{Material} {TypeName ()}";
		}

		public string TypeName ()
		{
			if (ItemSlot != ItemSlot.Weapon) {
				return ItemSlot.ToString ();
			}
			return WeaponType.ToString ();
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
					weaponAttackBase = 3;
					break;
				case WeaponType.Mace:
					weaponAttackBase = 2;
					break;
				case WeaponType.Staff:
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
							defenseBase = 1;
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
						case WeaponType.Staff:
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

		private WeaponDamage GetDamage ()
		{
			if (ItemSlot != ItemSlot.Weapon) {
				return new WeaponDamage (0, 0);
			}
			int numDices;
			switch (WeaponType) {
				case WeaponType.ShortSword:
					numDices = 1;
					break;
				case WeaponType.LongSword:
					numDices = 1;
					break;
				case WeaponType.Axe:
					numDices = 2;
					break;
				case WeaponType.Mace:
					numDices = 3;
					break;
				case WeaponType.Staff:
					numDices = 1;
					break;
				default:
					throw new ArgumentOutOfRangeException ();
			}
			return new WeaponDamage(numDices, (int)Material - 1);
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
			return  4 * (int)Material;
		}
	}
}
