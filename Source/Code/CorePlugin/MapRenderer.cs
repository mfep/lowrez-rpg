using Duality;
using Duality.Drawing;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(MapGenerator))]
	public class MapRenderer : Component, ICmpRenderer
	{
		[DontSerialize] private readonly CanvasBuffer canvasBuffer = new CanvasBuffer ();

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
			map.MapForeach ((x, y, type) =>
			{
				var tileColor = type == TileType.Solid ? ColorRgba.Black : ColorRgba.White;
				canvas.State.ColorTint = tileColor;
				const float grid = DiscreteTransform.Grid;
				canvas.FillRect (x * grid, y * grid, grid, grid);
			});
		}

		public float BoundRadius => 0.0f;
	}
}