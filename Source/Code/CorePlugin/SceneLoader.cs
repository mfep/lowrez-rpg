using System;
using System.Threading.Tasks;
using Duality;
using Duality.Resources;

namespace LowResRoguelike
{
	public class SceneLoader : Component, ICmpInitializable, ICmpUpdatable
	{
		public float SwitchTime { get; set; }
		public ContentRef<Scene> SceneAfter { get; set; }

		[DontSerialize] private TimeSpan switchTime;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				switchTime = Time.GameTimer + TimeSpan.FromSeconds (SwitchTime);
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public void OnUpdate ()
		{
			if (Time.GameTimer > switchTime) {
				GameObj.ParentScene.DisposeLater ();
				Scene.SwitchTo (SceneAfter);
			}
		}
	}
}