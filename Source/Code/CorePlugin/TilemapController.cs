using System;
using Duality;
using Duality.Plugins.Tilemaps;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(Tilemap))]
	public class TilemapController : Component
	{
		[DontSerialize] private Tilemap tilemap;

		[DontSerialize] private const int NotVisibleTileIndex = 5;
		[DontSerialize] private const int EmptyTileIndex = 4;

		public void SetupTilemap (MapGenerator.GenerationPrefs prefs)
		{
			TurnActionManager.PlayerMoved += UpdateTilemap;

			tilemap = GameObj.GetComponent<Tilemap> ();
			tilemap.Resize (prefs.Width, prefs.Height);
			var tileGrid = tilemap.BeginUpdateTiles ();
			tileGrid.Fill (new Tile (NotVisibleTileIndex), 0, 0, tileGrid.Width, tileGrid.Height);
			tilemap.EndUpdateTiles ();
			UpdateTilemap ();
		}

		public void UpdateTilemap ()
		{
			var tileGrid = tilemap.BeginUpdateTiles ();

			var generatedMap = SceneCache.Get<MapGenerator> ().GeneratedMap;

			var playerPos = SceneCache.Player.GetComponent<DiscreteTransform> ().Position;
			var halfRectSide = MapExtensions.MaxVisibilityDst;

			var xMin = Math.Max (0, playerPos.X - halfRectSide);
			var yMin = Math.Max (0, playerPos.Y - halfRectSide);
			var xMax = Math.Min (playerPos.X + halfRectSide, generatedMap.Width - 1);
			var yMax = Math.Min (playerPos.Y + halfRectSide, generatedMap.Height - 1);

			for (var y = yMin; y <= yMax; y++) {
				for (var x = xMin; x <= xMax; x++) {
					if (generatedMap.IsVisible (playerPos, new Point2 (x, y))) {
						var tileIndex = 0;
						if (generatedMap[x, y] == TileType.Empty) {
							tileIndex = EmptyTileIndex;
						} else {
							if (x % 2 == 0) {
								tileIndex++;
							}
							if (y % 2 == 0) {
								tileIndex += 2;
							}
						}
						tileGrid[x, y] = new Tile (tileIndex);
					}
				}
			}

			tilemap.EndUpdateTiles ();
		}

		~TilemapController ()
		{
			TurnActionManager.PlayerMoved -= UpdateTilemap;
		}
	}
}