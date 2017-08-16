using Duality;
using Duality.Drawing;
using Duality.Resources;
using LowResRoguelike.ItemSystem;
using Material = Duality.Resources.Material;

namespace LowResRoguelike
{
	public class UiRenderer : Component, ICmpRenderer
	{
		public ContentRef<Font> UiFont { get; set; }
		public ContentRef<Material> UiMat { get; set; }
		public ColorRgba PlayerHealthColor { get; set; }
		public ColorRgba PlayerHealthBackgroundColor { get; set; }
		public ColorRgba AttackTextColor { get; set; }
		public ColorRgba DamageTextColor { get; set; }
		public ColorRgba DefenseTextColor { get; set; }
		public ColorRgba ArmorTextColor { get; set; }
		public ColorRgba MaxHealthTextColor { get; set; }
		public ColorRgba UiBackgroundColor { get; set; }
		public ColorRgba EnemyHealthColor { get; set; }
		public ColorRgba EnemyHealthBackgroundColor { get; set; }

		public Pickup PickupToShow
		{
			get => pickupToShow;
			set => pickupToShow = value;
		}

		[DontSerialize] private readonly CanvasBuffer buffer = new CanvasBuffer ();
		[DontSerialize] private CombatUiData combatUiData;
		[DontSerialize] private Pickup pickupToShow;

		public bool IsVisible (IDrawDevice device)
		{
			var screenOverlayFlag = (device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None;
			return screenOverlayFlag;
		}

		public void Draw (IDrawDevice device)
		{
			var canvas = new Canvas (device, buffer);
			DrawStatsUi (canvas);
			if (GameObj.ParentScene.FindComponent<TurnActionManager> ().IsInCombat) {
				DrawCombatUi (canvas);
			}
			if (pickupToShow != null) {
				DrawPickup (canvas);
			}
		}

		public float BoundRadius => 0f;

		public void RequestCombatUi (CombatUiData uiData)
		{
			combatUiData = uiData;
		}

		private void DrawStatsUi (Canvas canvas)
		{
			var stats = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<CombatStats> ();
			if (stats == null) {
				return;
			}

			// horizontal bar
			//var batchInfo = new BatchInfo (DrawTechnique.Alpha, UiBackgroundColor, null);
			//canvas.State.SetMaterial (batchInfo);
			//canvas.State.ColorTint = UiBackgroundColor;
			//canvas.FillRect (0, 59, 64, 5);

			// player health bar
			canvas.State.SetMaterial (null as BatchInfo);
			var playerHealthPixels = MathF.RoundToInt ((float)stats.CurrentHealth / stats.MaxHealth * 64);
			canvas.State.ColorTint = PlayerHealthBackgroundColor;
			canvas.DrawRect (0, 0, 1, 64);
			if (playerHealthPixels > 0) {
				canvas.State.ColorTint = PlayerHealthColor;
				canvas.DrawRect (0, 64 - playerHealthPixels, 1, playerHealthPixels);
			}

			canvas.State.ColorTint = ColorRgba.White;
			canvas.State.SetMaterial (UiMat);

			// attack
			canvas.State.ColorTint = AttackTextColor;
			SetTextureRect (canvas, 0);
			canvas.FillRect (1, 59, 5, 5);
			var attackText = $"{stats.Attack:D2}";
			canvas.State.TextFont = UiFont;
			canvas.DrawText (attackText, 7, 59);

			// damage
			canvas.State.ColorTint = DamageTextColor;
			SetTextureRect(canvas, 4);
			canvas.FillRect (29, 59, 5, 5);
			var damageText = $"{stats.Damage}";
			canvas.DrawText(damageText, 35, 59);

			// defense
			canvas.State.ColorTint = DefenseTextColor;
			SetTextureRect (canvas, 1);
			//canvas.FillRect (25, 59, 5, 5);
			canvas.FillRect (15, 59, 5, 5);
			var defenseText = $"{stats.Defense:D2}";
			//canvas.DrawText (defenseText, 31, 59);
			canvas.DrawText (defenseText, 21, 59);

			// armor
			canvas.State.ColorTint = ArmorTextColor;
			SetTextureRect (canvas, 2);
			//canvas.FillRect (39, 59, 5, 5);
			canvas.FillRect (2, 6, 5, 5);
			var armorText = $"{stats.DamageReduction:D1}";
			//canvas.DrawText (armorText, 45, 59);
			canvas.DrawText (armorText, 8, 6);

			// maxHealth
			canvas.State.ColorTint = MaxHealthTextColor;
			SetTextureRect (canvas, 3);
			//canvas.FillRect (49, 59, 5, 5);
			canvas.FillRect (2, 0, 5, 5);
			var maxHealthText = $"{stats.CurrentHealth}/{stats.MaxHealth}";
			//canvas.DrawText (maxHealthText, 55, 59);
			canvas.DrawText (maxHealthText, 8, 0);
		}

		private void DrawCombatUi (Canvas canvas)
		{
			canvas.State.SetMaterial (null as BatchInfo);
			var playerAttacks = combatUiData.PlayerAttacks;

			// enemy health bar
			if (combatUiData.PlayerAttacks) {
				canvas.State.ColorTint = EnemyHealthBackgroundColor;
				canvas.FillRect(63, 0, 1, 64);
				canvas.State.ColorTint = EnemyHealthColor;
				var enemyHealthPixels = MathF.RoundToInt(64f * combatUiData.RemainingHealth / combatUiData.MaxHealth);
				canvas.FillRect(63, 64 - enemyHealthPixels, 1, enemyHealthPixels);
			}

			//// background line
			//var isHit = combatUiData.AttackScore > combatUiData.DefenseScore;
			//canvas.State.ColorTint = isHit ? AttackTextColor : DefenseTextColor;
			//canvas.FillRect (0, 59, 64, 5);
			//canvas.State.SetMaterial (UiMat);

			//// background icon/text
			//canvas.State.ColorTint = ColorRgba.White;
			//SetTextureRect (canvas, isHit ? 0 : 1);
			var x = playerAttacks ? 51 : 0;
			//canvas.FillRect (x, 59, 5, 5);
			//var behindText = isHit ? $"{combatUiData.AttackScore:D2}" : $"{combatUiData.DefenseScore:D2}";
			//canvas.DrawText (behindText, x + 6, 59);

			//// foreground line
			//var forwardX = MathF.RoundToInt (64f * (isHit ? combatUiData.DefenseScore : combatUiData.AttackScore) /
			//                                 (isHit ? combatUiData.AttackScore : combatUiData.DefenseScore));
			//canvas.State.SetMaterial (null as BatchInfo);
			//canvas.State.ColorTint = isHit ? DefenseTextColor : AttackTextColor;
			//x = playerAttacks ? 0 : 64 - forwardX;
			//canvas.FillRect (x, 59, forwardX, 5);

			//// foreground icon/text
			canvas.State.SetMaterial (UiMat);
			//canvas.State.ColorTint = ColorRgba.White;
			//SetTextureRect (canvas, isHit ? 1 : 0);
			//x = playerAttacks ? Math.Max (forwardX - 13, 0) : Math.Min (64 - forwardX, 51);
			//canvas.FillRect (x, 59, 5, 5);
			//var forwardText = isHit ? $"{combatUiData.DefenseScore:D2}" : $"{combatUiData.AttackScore:D2}";
			//x = playerAttacks ? Math.Max (forwardX - 7, 6) : Math.Min (70 - forwardX, 57);
			//canvas.DrawText (forwardText, x, 59);

			// damage icon/text
			var result = combatUiData.AttackResult;
			canvas.State.ColorTint = result == AttackResult.Defended ? DefenseTextColor : (result == AttackResult.ArmorZeroed ? ArmorTextColor : DamageTextColor);
			SetTextureRect (canvas, result == AttackResult.Defended ? 1 : (result == AttackResult.ArmorZeroed ? 2 : 4));
			x = playerAttacks ? 51 : 4;
			canvas.FillRect (x, 51, 5, 5);
			var damageText = $"{combatUiData.Damage:D1}";
			x = playerAttacks ? 57 : 10;
			canvas.DrawText(damageText, x, 51);

			if (result == AttackResult.CriticalHit) {
				x = playerAttacks ? 48 : 2;
				canvas.DrawText ("CRIT", x, 45);
			}
		}

		private void DrawPickup (Canvas canvas)
		{
			canvas.State.ColorTint = pickupToShow.DisplayColor;
			canvas.DrawText (pickupToShow.DisplayText, 32 - StringWidth (pickupToShow.DisplayText) / 2, 14);
		}

		private int StringWidth (string str)
		{
			return str.Length * 4;
		}

		private void SetTextureRect (Canvas canvas, int index)
		{
			var ratio = UiMat.Res.MainTexture.Res.UVRatio;
			canvas.State.TextureCoordinateRect = new Rect (ratio.X / 5 * index, 0, ratio.X / 5, ratio.Y);
		}
	}
}