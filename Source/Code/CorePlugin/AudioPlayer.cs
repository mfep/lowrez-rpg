using Duality;
using Duality.Resources;

namespace LowResRoguelike
{
	public enum Sfx
	{
		Move,
		Pickup,
		Hit,
		Blocked,
		ArmorBlocked,
		Kill
	}

	public static class AudioPlayer
	{
		public static void PlaySfx (Sfx sfx)
		{
			var sound = ContentProvider.RequestContent<Sound> ($"DATA\\Sfx\\{sfx}.Sound.res");
			DualityApp.Sound.PlaySound (sound);
		}
	}
}