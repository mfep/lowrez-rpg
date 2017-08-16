using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Resources;
using LowResRoguelike.ItemSystem;

namespace LowResRoguelike
{
	public class LevelManager : Component, ICmpInitializable
	{
		public class PrefabCount
		{
			public ContentRef<Prefab> Prefab { get; set; }
			public int Count { get; set; }
		}

		public int MapWidth { get; set; }
		public int MapHeight { get; set; }
		public PrefabCount[] PrefabCounts { get; set; }
		public int MinMaterialLevel { get; set; }
		public int MaxMaterialLevel { get; set; }

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				LoadGameScene ();
				StartLevel ();
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public ItemInstance GenerateItem ()
		{
			return ItemGenerator.Generate (MinMaterialLevel, MaxMaterialLevel);
		}

		private void LoadGameScene ()
		{
			var gameScene = ContentProvider.RequestContent<Scene> (@"DATA\GameScene.Scene.res");
			Scene.Current.Consume (gameScene);
		}

		private void StartLevel ()
		{
			var generator = GameObj.ParentScene.FindComponent<MapGenerator> ();
			generator.GenerateMap (MapWidth, MapHeight);

			var emptyTiles = generator.GeneratedMap.TilesOfType (TileType.Empty).ToList ();

			var playerStartPos = generator.GeneratedMap.TilesOfType (TileType.Empty).First ();
			emptyTiles.Remove (playerStartPos);
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().MoveTo (playerStartPos);
			GameObj.ParentScene.FindComponent<MapRenderer> ().UpdateMapVisibility ();

			InstantiatePrefabs (emptyTiles);
		}

		private void InstantiatePrefabs (List<Point2> emptyTiles)
		{
			foreach (var prefabCount in PrefabCounts) {
				InstantiateGameObjects (emptyTiles, prefabCount.Prefab, prefabCount.Count);
			}
		}

		private void InstantiateGameObjects (List<Point2> emptyTiles, ContentRef<Prefab> prefab, int count)
		{
			for (var i = 0; i < count; i++) {
				var tileIndex = MathF.Rnd.Next (emptyTiles.Count);
				var pos = emptyTiles[tileIndex];
				emptyTiles.RemoveAt (tileIndex);
				var gameObject = prefab.Res.Instantiate ();
				gameObject.Parent = GameObj;
				gameObject.GetComponent<DiscreteTransform> ().Position = pos;
			}
		}
	}
}