using System;
using Duality;

namespace LowResRoguelike
{
	internal static class MapExtensions
	{
		public static int NeighbourCount (this Grid<TileType> map, Point2 middle, TileType type)
		{
			var count = 0;

			void CheckCoord (Point2 coord)
			{
				if (coord.X >= 0 && coord.X < map.Width && coord.Y >= 0 && coord.Y < map.Height) {
					if (map[coord.X, coord.Y] == type) {
						count++;
					}
				}
			}

			CheckCoord (new Point2 (middle.X + 1, middle.Y));
			CheckCoord (new Point2 (middle.X, middle.Y + 1));
			CheckCoord (new Point2 (middle.X - 1, middle.Y));
			CheckCoord (new Point2 (middle.X, middle.Y - 1));

			return count;
		}

		public static void MapForeach (this IReadOnlyGrid<TileType> map, Action<int, int, TileType> method)
		{
			for (int y = 0; y < map.Height; y++) {
				for (int x = 0; x < map.Width; x++) {
					method (x, y, map[x, y]);
				}
			}
		}

		public static bool On (this IReadOnlyGrid<TileType> map, Point2 coord)
		{
			return coord.X >= 0 && coord.X < map.Width && coord.Y >= 0 && coord.Y < map.Height;
		}

		public static TileType At (this IReadOnlyGrid<TileType> map, int x, int y)
		{
			return map.At (new Point2 (x, y));
		}

		public static TileType At (this IReadOnlyGrid<TileType> map, Point2 coord)
		{
			if (map.On (coord)) {
				return map[coord.X, coord.Y];
			}
			return TileType.Solid;
		}
	}
}