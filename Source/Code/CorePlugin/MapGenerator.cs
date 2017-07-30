using System;
using System.Collections.Generic;
using Duality;

namespace LowResRoguelike
{
	public class MapGenerator : Component
	{
		public int MinRoomSize { get; set; }
		public int MaxRoomSize { get; set; }
		public int MinCorrdidorLength { get; set; }
		public int MaxCorrdidorLength { get; set; }
		public int RequiredNumberOfFeatures { get; set; }
		public int MaxInterations { get; set; }

		public IReadOnlyGrid<TileType> GeneratedMap => generatedMap;

		[DontSerialize] private Grid<TileType> generatedMap;

		public void GenerateMap (int width, int height)
		{
			var map = new Grid<TileType> (width - 2, height - 2);
			map.Fill (TileType.Solid, 0, 0, map.Width, map.Height);

			CreateCenterRoom (map);

			var numberOfFeaturesAdded = 0;
			var iterations = 0;
			while (numberOfFeaturesAdded < RequiredNumberOfFeatures && iterations <= MaxInterations) {
				if (TryAddingCorridor (map)) {
					numberOfFeaturesAdded++;
				}
				iterations++;
			}
			map.AssumeRect (-1,-1, width, height);
			generatedMap = map;
		}

		private void CreateCenterRoom (Grid<TileType> map)
		{
			var roomWidth = MathF.Rnd.Next (MinRoomSize, MaxRoomSize);
			var roomHeight = MathF.Rnd.Next (MinRoomSize, MaxRoomSize);

			var left = MathF.Rnd.Next (1, map.Width - roomWidth - 1);
			var top = MathF.Rnd.Next (1, map.Height - roomHeight - 1);

			map.Fill (TileType.Empty, left, top, roomWidth, roomHeight);
		}

		private bool TryAddingCorridor (Grid<TileType> map)
		{
			var walls = new List<Point2> ();
			map.MapForeach ((x, y, type) =>
			{
				if (type == TileType.Solid && map.NeighbourCount (new Point2 (x, y), TileType.Empty) > 0) {
					walls.Add (new Point2 (x, y));
				}
			});

			var nextWall = walls[MathF.Rnd.Next (walls.Count)];

			var corridorDir = Point2.Zero;
			if (map.At (nextWall.X - 1, nextWall.Y) == TileType.Empty) {
				corridorDir = new Point2 (1, 0);
			} else if (map.At (nextWall.X, nextWall.Y - 1) == TileType.Empty) {
				corridorDir = new Point2 (0, 1);
			} else if (map.At (nextWall.X + 1, nextWall.Y) == TileType.Empty) {
				corridorDir = new Point2 (-1, 0);
			} else if (map.At (nextWall.X, nextWall.Y + 1) == TileType.Empty) {
				corridorDir = new Point2 (0, -1);
			} else {
				throw new Exception ("Unexpected case");
			}

			var solidToEmpty = new List<Point2> ();

			var corridorLength = MathF.Rnd.Next (MinCorrdidorLength, MaxCorrdidorLength);
			for (var corridorIndex = 0; corridorIndex < corridorLength; ++corridorIndex) {
				var corridorPos = nextWall + corridorDir * corridorIndex;
				if (!map.On(corridorPos) || map[corridorPos.X, corridorPos.Y] == TileType.Empty || (map.NeighbourCount(corridorPos, TileType.Empty) > 0 && corridorIndex > 0)) {
					return false;
				}
				solidToEmpty.Add (corridorPos);
			}

			foreach (var coord in solidToEmpty) {
				map[coord.X, coord.Y] = TileType.Empty;
			}
			return true;
		}
	}
}