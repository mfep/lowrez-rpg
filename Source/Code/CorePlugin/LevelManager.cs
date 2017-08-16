using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Resources;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(MapGenerator))]
	public class LevelManager : Component, ICmpInitializable
	{
		public int MapWidth { get; set; }
		public int MapHeight { get; set; }
		public int EnemyCount { get; set; }
		public ContentRef<Prefab> EnemyPrefab { get; set; }
		public ContentRef<Prefab> HealthPotionPrefab { get; set; }

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

			var emptyTiles = GameObj.ParentScene.FindComponent<MapGenerator> ().GeneratedMap.TilesOfType (TileType.Empty).ToList ();

			var playerStartPos = generator.GeneratedMap.TilesOfType (TileType.Empty).First ();
			emptyTiles.Remove (playerStartPos);
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().MoveTo (playerStartPos);

			AddEnemies (emptyTiles);
			AddHealthPotions (emptyTiles);
		}

		private void AddEnemies (List<Point2> emptyTiles)
		{
			for (var i = 0; i < EnemyCount; i++) {
				var tileIndex = MathF.Rnd.Next (emptyTiles.Count);
				var pos = emptyTiles[tileIndex];
				emptyTiles.RemoveAt (tileIndex);
				var enemyObj = EnemyPrefab.Res.Instantiate ();
				enemyObj.Parent = GameObj;
				enemyObj.GetComponent<DiscreteTransform> ().Position = pos;
			}
		}

		private void AddHealthPotions (List<Point2> emptyTiles)
		{
			for (int i = 0; i < 10; i++) {
				var tileIndex = MathF.Rnd.Next (emptyTiles.Count);
				var pos = emptyTiles[tileIndex];
				emptyTiles.RemoveAt (tileIndex);
				var obj = HealthPotionPrefab.Res.Instantiate();
				obj.Parent = GameObj;
				obj.GetComponent<DiscreteTransform> ().Position = pos;
			}
		}
	}
}