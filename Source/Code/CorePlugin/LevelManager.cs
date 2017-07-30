using System.Linq;
using Duality;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(MapGenerator))]
	public class LevelManager : Component, ICmpInitializable
	{
		public int MapWidth { get; set; }
		public int MapHeight { get; set; }

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				StartLevel ();
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		private void StartLevel ()
		{
			var generator = GameObj.GetComponent<MapGenerator> ();
			generator.GenerateMap (MapWidth, MapHeight);

			var playerStartPos = generator.GeneratedMap.TilesOfType (TileType.Empty).First ();
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().MoveTo (playerStartPos);
		}
	}
}