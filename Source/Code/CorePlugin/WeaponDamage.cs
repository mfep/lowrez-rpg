using Duality;

namespace LowResRoguelike
{
	public class WeaponDamage
	{
		public WeaponDamage ()
		{
		}

		public WeaponDamage (int diceCount, int additional)
		{
			DiceCount = diceCount;
			Additional = additional;
		}

		public const int DiceSides = 4;
		public int DiceCount { get; set; }
		public int Additional { get; set; }

		public int Roll ()
		{
			var damage = 0;
			for (var i = 0; i < DiceCount; i++) {
				damage += MathF.Rnd.Next (1, DiceSides + 1);
			}
			damage += Additional;
			return damage;
		}

		public override string ToString ()
		{
			if (DiceCount == 0) {
				return "0";
			}
			var str = $"{DiceCount}d{DiceSides}";
			if (Additional != 0) {
				str = $"{str}+{Additional}";
			}
			return str;
		}
	}
}