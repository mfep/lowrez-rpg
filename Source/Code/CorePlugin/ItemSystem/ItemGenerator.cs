using Duality;

namespace LowResRoguelike.ItemSystem
{
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