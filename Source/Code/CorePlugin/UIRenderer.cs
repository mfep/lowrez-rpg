using Duality;
using Duality.Drawing;
using Duality.Resources;

namespace LowResRoguelike
{
	public class UiRenderer : Component, ICmpRenderer
	{
		public ContentRef<Font> UiFont { get; set; }

		[DontSerialize] private readonly CanvasBuffer buffer = new CanvasBuffer();

		public bool IsVisible (IDrawDevice device)
		{
			var screenOverlayFlag = (device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None;
			return screenOverlayFlag;
		}

		public void Draw (IDrawDevice device)
		{
			var canvas = new Canvas (device, buffer);
			DrawUi (canvas);
		}

		private void DrawUi (Canvas canvas)
		{
			var stats = GameObj.ParentScene.FindComponent<PlayerStatus> ();
			var attackText = $"";
		}

		public float BoundRadius => 0f;
	}
}