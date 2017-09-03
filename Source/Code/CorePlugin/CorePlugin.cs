using Duality;
using LowResRoguelike.GamePrefs;

namespace LowResRoguelike
{
	public class LowResRoguelikeCorePlugin : CorePlugin
	{
		protected override void OnGameStarting ()
		{
			SceneCache.AttachToSceneEntered ();
			PrefLoader.LoadYamlDocument ();
			AudioPlayer.PlayMusic ();
		}

		protected override void OnGameEnded ()
		{
			SceneCache.DetachFromSceneEntered ();
		}
	}
}
