using System.Collections.Generic;
using Duality;
using Duality.Drawing;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(MapGenerator))]
	public class MapRenderer : Component, ICmpRenderer
	{
		[DontSerialize] private readonly CanvasBuffer canvasBuffer = new CanvasBuffer ();
		[DontSerialize] private readonly HashSet<Point2> visitedPoints = new HashSet<Point2> ();

		public bool IsVisible (IDrawDevice device)
		{
			var group0Flag = (device.VisibilityMask & VisibilityFlag.Group0) != VisibilityFlag.None;
			var screenOverlayFlag = (device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None;
			return !screenOverlayFlag && group0Flag;
		}

		public void Draw (IDrawDevice device)
		{
			var map = GameObj.GetComponent<MapGenerator> ().GeneratedMap;
			if (map == null) {
				return;
			}
			var canvas = new Canvas (device, canvasBuffer);
			RenderMap (map, canvas);
		}

		private void RenderMap (IReadOnlyGrid<TileType> map, Canvas canvas)
		{
			var playerPos = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().Position;
			map.MapForeach ((x, y, type) =>
			{
				var p = new Point2 (x, y);
				if (map.IsVisible (playerPos, p)) {
					visitedPoints.Add (p);
				}
				
			});
			foreach (var visitedPoint in visitedPoints) {
				var tileColor = map[visitedPoint.X, visitedPoint.Y] == TileType.Solid ? ColorRgba.DarkGrey : ColorRgba.White;
				canvas.State.ColorTint = tileColor;
				const float grid = DiscreteTransform.Grid;
				canvas.FillRect (visitedPoint.X * grid, visitedPoint.Y * grid, grid, grid);
			}
		}

		public float BoundRadius => 0.0f;
	}
}