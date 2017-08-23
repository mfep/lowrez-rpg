using System;
using System.Collections.Generic;
using System.Linq;
using Duality;
using LowResRoguelike.GamePrefs;

namespace LowResRoguelike.ItemSystem
{
	public static class ItemGenerator
	{
		public static ItemInstance Generate (int lowestMaterial, int highestMaterial)
		{
			var slot = (ItemSlot)MathF.Rnd.Next (0, (int)ItemSlot.Last + 1);
			var material = GetRandomFromList (PrefLoader.Materials, lowestMaterial, highestMaterial);

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
			return PrefLoader.PlayerStartingItems.ToArray ();
		}

		private static T GetRandomFromList<T> (IReadOnlyList<T> list, int min = 0, int max = int.MaxValue - 1)
		{
			var idx = MathF.Rnd.Next (min, Math.Min (list.Count, max + 1));
			return list[idx];
		}
	}
}