using Duality;

namespace LowResRoguelike
{
	public class WeaponDamage
	{
		public WeaponDamage (int numDices, int additionalDamage)
		{
			NumDices = numDices;
			AdditionalDamage = additionalDamage;
		}

		public const int DiceSides = 4;
		public int NumDices { get; }
		public int AdditionalDamage { get; }

		public int Roll ()
		{
			var damage = 0;
			for (var i = 0; i < NumDices; i++) {
				damage += MathF.Rnd.Next (1, DiceSides + 1);
			}
			damage += AdditionalDamage;
			return damage;
		}
	}
}