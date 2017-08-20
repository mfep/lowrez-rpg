using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Resources;
using LowResRoguelike.GamePrefs;
using LowResRoguelike.ItemSystem;

namespace LowResRoguelike
{
	public class LevelManager : Component, ICmpInitializable
	{
		public int LevelIndex { get; private set; }
		public int LevelCount => PrefLoader.Levels?.Count ?? 0;

		public ContentRef<Prefab> EnemyPrefab { get; set; }
		public ContentRef<Prefab> ItemPrefab { get; set; }
		public ContentRef<Prefab> PotionPrefab { get; set; }
		public ContentRef<Prefab> ExitPrefab { get; set; }
		public ContentRef<Scene> GameOverScene { get; set; }

		[DontSerialize] private LevelPref prefs;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				PrefLoader.LoadYamlDocument ();
				AudioPlayer.PlayMusic ();
				NextLevel ();
				GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<CombatStats> ().Death += OnPlayerDied;
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<CombatStats> ().Death -= OnPlayerDied;
		}

		public ItemInstance GenerateItem ()
		{
			return ItemGenerator.Generate (prefs.MinMaterial, prefs.MaxMaterial);
		}

		public void NextLevel ()
		{
			if (LevelIndex >= PrefLoader.Levels.Count) {
				return;
			}
			foreach (var gameObject in GameObj.ChildrenDeep) {
				gameObject.DisposeLater ();
			}
			prefs = PrefLoader.Levels[LevelIndex++];
			StartLevel ();
		}

		private void OnPlayerDied ()
		{
			Scene.SwitchTo (GameOverScene);
		}

		private void StartLevel ()
		{
			GameObj.ParentScene.FindComponent<MapRenderer> ().Clear ();
			var generator = GameObj.ParentScene.FindComponent<MapGenerator> ();
			generator.GenerateMap (prefs.Map);

			var emptyTiles = generator.GeneratedMap.TilesOfType (TileType.Empty).ToList ();

			var playerStartPos = generator.GeneratedMap.TilesOfType (TileType.Empty).First ();
			emptyTiles.Remove (playerStartPos);
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().MoveTo (playerStartPos);
			GameObj.ParentScene.FindComponent<MapRenderer> ().UpdateMapVisibility ();

			InstantiatePrefabs (emptyTiles);
		}

		private void InstantiatePrefabs (List<Point2> emptyTiles)
		{
			InstantiateGameObjects (emptyTiles, PotionPrefab, prefs.PotionCount);
			InstantiateGameObjects (emptyTiles, ItemPrefab, prefs.ItemCount);
			InstantiateGameObjects (emptyTiles, ExitPrefab, 1);

			if (prefs.Enemies == null) {
				return;
			}
			foreach (var enemyRef in prefs.Enemies) {
				foreach (var enemyObject in InstantiateGameObjects (emptyTiles, EnemyPrefab, enemyRef.Count)) {
					enemyRef.Enemy.Apply (enemyObject);
				}
			}
		}

		private List<GameObject> InstantiateGameObjects (List<Point2> emptyTiles, ContentRef<Prefab> prefab, int count)
		{
			var objects = new List<GameObject> (count);
			for (var i = 0; i < count; i++) {
				var tileIndex = MathF.Rnd.Next (emptyTiles.Count);
				var pos = emptyTiles[tileIndex];
				emptyTiles.RemoveAt (tileIndex);
				var gameObject = prefab.Res.Instantiate ();
				gameObject.Parent = GameObj;
				gameObject.GetComponent<DiscreteTransform> ().Position = pos;
				objects.Add (gameObject);
			}
			return objects;
		}
	}
}