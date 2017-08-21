namespace LowResRoguelike.ItemSystem
{
	public enum ItemSlot
	{
		Head,
		Torso,
		WeaponHand,
		ShieldHand,
		Last = ShieldHand
	}

	public class Material
	{
		public string Name { get; set; }
		public int Value { get; set; }
	}

	public class Stats
	{
		public int Attack { get; set; }
		public int Defense { get; set; }
		public int DamageReduction { get; set; }
		public int MaxHealth { get; set; }
	}

	public class ItemClass
	{
		public string Name { get; set; }
		public ItemSlot Slot { get; set; }
		public Stats Stats { get; set; }
	}

	public class WeaponItemClass : ItemClass
	{
		public int DiceCount { get; set; }
	}

	public class ItemInstance
	{
		public Material Material { get; set; }
		public ItemClass ItemClass { get; set; }

		public int AttackMod => Material.Value * ItemClass.Stats.Attack;
		public int DefenseMod => Material.Value * ItemClass.Stats.Defense;
		public int DamageReductionMod => Material.Value * ItemClass.Stats.DamageReduction;
		public int MaxHealthMod => Material.Value * ItemClass.Stats.MaxHealth;

		public WeaponDamage Damage
		{
			get
			{
				if (ItemClass is WeaponItemClass weapon) {
					return new WeaponDamage (weapon.DiceCount, Material.Value - 1);
				}
				return null;
			}
		}

		public override string ToString ()
		{
			return $"{Material.Name} {ItemClass.Name}";
		}
	}
}