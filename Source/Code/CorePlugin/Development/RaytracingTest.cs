using Duality;
using Duality.Drawing;
using Duality.Input;

namespace LowResRoguelike.Development
{
	public class RaytracingTest : Component, ICmpUpdatable, ICmpRenderer
	{
		[DontSerialize] private Vector2? clickedPos;

		private const float Grid = 40f;

		public bool IsVisible (IDrawDevice device)
		{
			var screenOverlayFlag = (device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None;
			return screenOverlayFlag;
		}

		public void Draw (IDrawDevice device)
		{
			if (clickedPos == null) {
				return;
			}
			var canvas = new Canvas (device);

			var currentPos = DualityApp.Mouse.Pos;
			var clickedPoint = PosToPoint (clickedPos.Value);
			var currentPoint = PosToPoint (currentPos);

			canvas.State.ColorTint = ColorRgba.Blue;
			foreach (var p in MapExtensions.GetPointsInLine(clickedPoint, currentPoint)) {
				canvas.FillRect (p.X * Grid, p.Y * Grid, Grid, Grid);
			}

			canvas.State.ColorTint = ColorRgba.Green;
			canvas.DrawLine (clickedPoint.X * Grid + Grid / 2, clickedPoint.Y * Grid + Grid / 2, currentPoint.X * Grid + Grid / 2, currentPoint.Y * Grid + Grid / 2);
		}

		public float BoundRadius => 0f;

		public void OnUpdate ()
		{
			if (DualityApp.Mouse.ButtonHit (MouseButton.Left)) {
				clickedPos = DualityApp.Mouse.Pos;
			}
			if (!DualityApp.Mouse.ButtonPressed (MouseButton.Left)) {
				clickedPos = null;
			}
		}

		private Point2 PosToPoint (Vector2 pos)
		{
			return new Point2 ((int)(pos.X / Grid), (int)(pos.Y / Grid));
		}
	}
}