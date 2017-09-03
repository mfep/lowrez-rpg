using System;
using System.Collections.Generic;
using Duality;
using Duality.Resources;

namespace LowResRoguelike
{
	internal static class MapExtensions
	{
		public const int MaxVisibilityDst = 8;

		public static IEnumerable<Point2> NeighboursOfType (this IReadOnlyGrid<TileType> map, Point2 middle, TileType type, bool cornersIncluded = false)
		{
			for (var y = -1; y <= 1; y++) {
				for (var x = -1; x <= 1; x++) {
					if (!cornersIncluded && Math.Abs (x) == Math.Abs (y)) {
						continue;
					}
					if (map.At (x, y) == type) {
						yield return new Point2 (middle.X + x, middle.Y + y);
					}
				}
			}
		}

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
			for (var y = 0; y < map.Height; y++) {
				for (var x = 0; x < map.Width; x++) {
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

		public static IEnumerable<Point2> TilesOfType (this IReadOnlyGrid<TileType> map, TileType type)
		{
			for (var y = 0; y < map.Height; y++) {
				for (var x = 0; x < map.Width; x++) {
					if (map[x, y] == type) {
						yield return new Point2 (x, y);
					}
				}
			}
		}

		public static IEnumerable<Point2> GetPointsInLine (Point2 p1, Point2 p2)
		{
			var dx = Math.Abs (p1.X - p2.X);
			var dy = Math.Abs (p1.Y - p2.Y);
			var x = p1.X;
			var y = p1.Y;
			var n = 1 + dx + dy;
			var xInc = p2.X > p1.X ? 1 : -1;
			var yInc = p2.Y > p1.Y ? 1 : -1;
			var error = dx - dy;
			dx *= 2;
			dy *= 2;

			for (; n > 0; --n) {
				yield return new Point2 (x, y);
				if (error > 0) {
					x += xInc;
					error -= dy;
				} else {
					y += yInc;
					error += dx;
				}
			}
		}

		public static bool IsVisible (this IReadOnlyGrid<TileType> map, Point2 p1, Point2 p2)
		{
			const int maxVisSqr = MaxVisibilityDst * MaxVisibilityDst;

			var deltaX = p2.X - p1.X;
			var deltaY = p2.Y - p1.Y;
			var dst = deltaX * deltaX + deltaY * deltaY;
			if (dst > maxVisSqr) {
				return false;
			}
			if (dst <= 2) {
				return true;
			}
			foreach (var p in GetPointsInLine (p1, p2)) {
				if (p != p1 && p != p2 && map[p.X, p.Y] == TileType.Solid) {
					return false;
				}
			}
			return true;
		}

		public static bool IsVisible (Point2 p1, Point2 p2)
		{
			return Scene.Current.FindComponent<MapGenerator> ().GeneratedMap.IsVisible (p1, p2);
		}

		public static int Manhattan (this Point2 p1, Point2 p2)
		{
			return Math.Abs (p1.X - p2.X) + Math.Abs (p1.Y - p2.Y);
		}
	}
}