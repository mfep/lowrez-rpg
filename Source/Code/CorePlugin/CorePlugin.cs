using Duality;
using LowResRoguelike.GamePrefs;

namespace LowResRoguelike
{
	public class LowResRoguelikeCorePlugin : CorePlugin
	{
		protected override void OnGameStarting ()
		{
			PrefLoader.LoadYamlDocument ();
			AudioPlayer.PlayMusic ();
		}
	}
}
