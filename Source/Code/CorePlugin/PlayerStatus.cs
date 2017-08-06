using Duality;

namespace LowResRoguelike
{
	public class PlayerStatus : Component
	{
		public int MaxHealth { get; set; }
		public int CurrentHealth { get; set; }
		public int Attack { get; set; }
		public int Defense { get; set; }
		public int DamageReduction { get; set; }
	}
}