using System.Collections.Generic;
using Duality;
using LowResRoguelike.GamePrefs;

namespace LowResRoguelike.ItemSystem
{
	public static class ItemGenerator
	{
		public static ItemInstance Generate (int lowestMaterial, int highestMaterial)
		{
			var slot = (ItemSlot)MathF.Rnd.Next (0, (int)ItemSlot.Last + 1);
			var material = GetRandomFromList (PrefLoader.Materials);

			if (slot == ItemSlot.WeaponHand) {
				var weaponClass = GetRandomFromList (PrefLoader.Weapons);
				return new ItemInstance
				{
					ItemClass = weaponClass,
					Material = material
				};
			}
			var itemClass = GetRandomFromList (PrefLoader.Items);
			return new ItemInstance
			{
				ItemClass = itemClass,
				Material = material
			};
		}

		public static ItemInstance[] GetPlayerDefaultItems ()
		{
			return PrefLoader.PlayerStartingItems;
		}

		private static T GetRandomFromList<T> (IReadOnlyList<T> list)
		{
			var idx = MathF.Rnd.Next (list.Count);
			return list[idx];
		}
	}
}