using Duality;
using Duality.Audio;
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
		private static SoundInstance musicInstance;

		public static void PlaySfx (Sfx sfx)
		{
			var sound = ContentProvider.RequestContent<Sound> ($"DATA\\Sfx\\{sfx}.Sound.res");
			DualityApp.Sound.PlaySound (sound);
		}

		public static void PlayMusic ()
		{
			if (musicInstance != null) {
				return;
			}
			var sound = ContentProvider.RequestContent<Sound> ($"DATA\\Sfx\\Music.Sound.res");
			musicInstance = DualityApp.Sound.PlaySound (sound);
			musicInstance.Looped = true;
		}
	}
}