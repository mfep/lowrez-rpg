using System.Collections.Generic;
using Duality;
using Duality.Drawing;
using Duality.Resources;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(MapGenerator))]
	public class MapRenderer : Component, ICmpRenderer, ICmpInitializable
	{
		public ContentRef<Material> WallMaterial { get; set; }
		public ColorRgba GroundColor { get; set; }

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
			foreach (var visitedPoint in visitedPoints) {
				if (map[visitedPoint.X, visitedPoint.Y] == TileType.Solid) {
					RenderWallTile (canvas, visitedPoint);
				} else {
					canvas.State.SetMaterial (null as BatchInfo);
					canvas.State.ColorTint = GroundColor;
					const float grid = DiscreteTransform.Grid;
					canvas.FillRect (visitedPoint.X * grid, visitedPoint.Y * grid, grid, grid);
				}
			}
		}

		private void RenderWallTile (Canvas canvas, Point2 coord)
		{
			var texCoordOffset = Vector2.Zero;
			if (coord.X % 2 == 0) {
				texCoordOffset += Vector2.UnitX * 0.5f;
			}
			if (coord.Y % 2 == 0) {
				texCoordOffset += Vector2.UnitY * 0.5f;
			}
			canvas.State.SetMaterial (WallMaterial);
			canvas.State.ColorTint = ColorRgba.White;
			canvas.State.TextureCoordinateRect = new Rect (texCoordOffset.X, texCoordOffset.Y, 0.5f, 0.5f);

			const float grid = DiscreteTransform.Grid;
			canvas.FillRect(coord.X * grid, coord.Y * grid, grid, grid);
		}

		public float BoundRadius => 0.0f;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				TurnActionManager.PlayerMoved += PlayerMovedCallback;
				UpdateMapVisibility ();
			}
		}

		private void PlayerMovedCallback ()
		{
			UpdateMapVisibility ();
		}

		private void UpdateMapVisibility ()
		{
			var playerPos = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().Position;
			var map = GameObj.GetComponent<MapGenerator>().GeneratedMap;
			map.MapForeach((x, y, type) =>
			{
				var p = new Point2(x, y);
				if (map.IsVisible(playerPos, p))
				{
					visitedPoints.Add(p);
				}

			});
		}

		public void OnShutdown (ShutdownContext context)
		{
			TurnActionManager.PlayerMoved -= PlayerMovedCallback;
		}
	}
}