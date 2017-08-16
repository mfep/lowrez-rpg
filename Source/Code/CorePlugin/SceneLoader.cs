using System;
using System.Threading.Tasks;
using Duality;
using Duality.Resources;

namespace LowResRoguelike
{
	public class SceneLoader : Component, ICmpInitializable
	{
		public float SwitchTime { get; set; }
		public ContentRef<Scene> SceneAfter { get; set; }

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				SwitchScene ();
			}
		}

		private async void SwitchScene ()
		{
			await Task.Delay (TimeSpan.FromSeconds (SwitchTime));
			SceneAfter.Res.Dispose ();
			Scene.SwitchTo (SceneAfter);
		}

		public void OnShutdown (ShutdownContext context)
		{
		}
	}
}