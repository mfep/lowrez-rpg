using Duality;
using Duality.Drawing;
using Duality.Resources;

namespace LowResRoguelike
{
	public class UiRenderer : Component, ICmpRenderer
	{
		public ContentRef<Font> UiFont { get; set; }
		public ContentRef<Material> UiMat { get; set; }
		public ColorRgba PlayerHealthColor { get; set; }
		public ColorRgba PlayerHealthBackgroundColor { get; set; }
		public ColorRgba AttackTextColor { get; set; }
		public ColorRgba DefenseTextColor { get; set; }
		public ColorRgba ArmorTextColor { get; set; }
		public ColorRgba MaxHealthTextColor { get; set; }
		public ColorRgba UiBackgroundColor { get; set; }


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
			if (stats == null) {
				return;
			}

			// horizontal bar
			var batchInfo = new BatchInfo (DrawTechnique.Alpha, UiBackgroundColor, null);
			canvas.State.SetMaterial (batchInfo);
			canvas.State.ColorTint = UiBackgroundColor;
			canvas.FillRect (0, 59, 64, 5);

			// player health bar
			var playerHealthPixels = MathF.RoundToInt ((float)stats.CurrentHealth / stats.MaxHealth * 64);
			canvas.State.ColorTint = PlayerHealthBackgroundColor;
			canvas.DrawRect (0, 0, 1, 64);
			if (playerHealthPixels > 0) {
				canvas.State.ColorTint = PlayerHealthColor;
				canvas.DrawRect (0, 64 - playerHealthPixels, 1, playerHealthPixels);
			}
			
			canvas.State.ColorTint = ColorRgba.White;
			canvas.State.SetMaterial (UiMat);
			var originalTextureRect = canvas.State.TextureCoordinateRect;

			// attack
			canvas.State.TextureCoordinateRect = new Rect (0, 0, originalTextureRect.W / 4, originalTextureRect.H);
			canvas.FillRect (1, 59, 5, 5);
			var attackText = $"{stats.Attack:D2}";
			canvas.State.SetMaterial (null as BatchInfo);
			canvas.State.TextFont = UiFont;
			canvas.State.ColorTint = AttackTextColor;
			canvas.DrawText(attackText, 7, 59);

			// defense
			canvas.State.ColorTint = ColorRgba.White;
			canvas.State.SetMaterial (UiMat);
			canvas.State.TextureCoordinateRect = new Rect (originalTextureRect.W / 4, 0, originalTextureRect.W / 4, originalTextureRect.H);
			canvas.FillRect (15, 59, 5, 5);
			var defenseText = $"{stats.Defense:D2}";
			canvas.State.ColorTint = DefenseTextColor;
			canvas.DrawText (defenseText, 21, 59);

			// armor
			canvas.State.ColorTint = ColorRgba.White;
			canvas.State.SetMaterial (UiMat);
			canvas.State.TextureCoordinateRect = new Rect (originalTextureRect.W / 4 * 2, 0, originalTextureRect.W / 4, originalTextureRect.H);
			canvas.FillRect (29, 59, 5, 5);
			var armorText = $"{stats.DamageReduction:D1}";
			canvas.State.ColorTint = ArmorTextColor;
			canvas.DrawText (armorText, 35, 59);

			// maxHealth
			canvas.State.ColorTint = ColorRgba.White;
			canvas.State.SetMaterial (UiMat);
			canvas.State.TextureCoordinateRect = new Rect (originalTextureRect.W / 4 * 3, 0, originalTextureRect.W / 4, originalTextureRect.H);
			canvas.FillRect (39, 59, 5, 5);
			var maxHealthText = $"{stats.MaxHealth:D2}";
			canvas.State.ColorTint = MaxHealthTextColor;
			canvas.DrawText (maxHealthText, 45, 59);
		}


		public float BoundRadius => 0f;
	}
}