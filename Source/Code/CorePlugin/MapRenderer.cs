using System.Linq;
using System.Runtime.CompilerServices;
using Duality;
using Duality.Drawing;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(MapGenerator))]
	public class MapRenderer : Component, ICmpInitializable, ICmpRenderer
	{
		public int MapWidth { get; set; }
		public int MapHeight { get; set; }

		[DontSerialize] private IReadOnlyGrid<TileType> map;
		[DontSerialize] private readonly CanvasBuffer canvasBuffer = new CanvasBuffer ();

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				var mapGenerator = GameObj.GetComponent<MapGenerator> ();
				mapGenerator.GenerateMap (MapWidth, MapHeight);
				map = mapGenerator.GeneratedMap;

				map.MapForeach ((x, y, type) =>
				{
					if (type == TileType.Empty) {
						GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().MoveTo (new Point2 (x, y));
					}
				});
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public bool IsVisible (IDrawDevice device)
		{
			var group0Flag = (device.VisibilityMask & VisibilityFlag.Group0) != VisibilityFlag.None;
			var screenOverlayFlag = (device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None;
			return !screenOverlayFlag && group0Flag;
		}

		public void Draw (IDrawDevice device)
		{
			if (map != null) {
				var canvas = new Canvas (device, canvasBuffer);
				RenderMap (canvas);
			}
		}

		private void RenderMap (Canvas canvas)
		{
			map.MapForeach ((x, y, type) =>
			{
				var tileColor = type == TileType.Solid ? ColorRgba.Black : ColorRgba.White;
				canvas.State.ColorTint = tileColor;
				var grid = DiscreteTransform.Grid;
				canvas.FillRect (x * grid, y * grid, grid, grid);
			});
		}

		public float BoundRadius => 0.0f;
	}
}