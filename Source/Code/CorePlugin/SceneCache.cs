using System;
using System.Collections.Generic;
using Duality;
using Duality.Resources;

namespace LowResRoguelike
{
	internal static class SceneCache
	{
		public static GameObject Player => playerObj ?? (playerObj = Scene.Current.FindGameObject<PlayerMovement> ());

		[DontSerialize] private static readonly Dictionary<Type, Component> componentCache = new Dictionary<Type, Component> ();
		[DontSerialize] private static GameObject playerObj;

		public static TCmp Get<TCmp> () where TCmp : Component
		{
			var key = typeof(TCmp);
			if (!componentCache.ContainsKey (key)) {
				componentCache[key] = Scene.Current.FindComponent<TCmp> ();
			}
			return componentCache[key] as TCmp;
		}

		public static void AttachToSceneEntered ()
		{
			Scene.Entered += OnSceneEntered;
		}

		public static void DetachFromSceneEntered ()
		{
			Scene.Entered -= OnSceneEntered;
		}

		private static void OnSceneEntered (object sender, EventArgs e)
		{
			componentCache.Clear ();
			playerObj = null;
		}
	}
}
