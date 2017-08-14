﻿using System;
using Duality;
using Duality.Drawing;
using Duality.Resources;

namespace LowResRoguelike
{
	public class UiRenderer : Component, ICmpRenderer
	{
		[DontSerialize] private readonly CanvasBuffer buffer = new CanvasBuffer ();
		[DontSerialize] private readonly CombatUiData combatUiData = new CombatUiData (true, 15, 2, 3, 10, 7);
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

		public bool IsVisible (IDrawDevice device)
		{
			var screenOverlayFlag = (device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None;
			return screenOverlayFlag;
		}

		public void Draw (IDrawDevice device)
		{
			var canvas = new Canvas (device, buffer);
			DrawStatsUi (canvas);
			if (combatUiData != null) {
				DrawCombatUi (canvas);
			}
		}

		public float BoundRadius => 0f;

		private void DrawStatsUi (Canvas canvas)
		{
			var stats = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<CombatStats> ();
			if (stats == null) {
				return;
			}

			// horizontal bar
			var batchInfo = new BatchInfo (DrawTechnique.Alpha, UiBackgroundColor, null);
			canvas.State.SetMaterial (batchInfo);
			canvas.State.ColorTint = UiBackgroundColor;
			canvas.FillRect (0, 59, 64, 5);

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
			SetTextureRect (canvas, 4);
			canvas.FillRect (15, 59, 5, 5);
			var damageText = $"{stats.Damage:D1}";
			canvas.DrawText (damageText, 21, 59);

			// defense
			canvas.State.ColorTint = DefenseTextColor;
			SetTextureRect (canvas, 1);
			canvas.FillRect (25, 59, 5, 5);
			var defenseText = $"{stats.Defense:D2}";
			canvas.DrawText (defenseText, 31, 59);

			// armor
			canvas.State.ColorTint = ArmorTextColor;
			SetTextureRect (canvas, 2);
			canvas.FillRect (39, 59, 5, 5);
			var armorText = $"{stats.DamageReduction:D1}";
			canvas.DrawText (armorText, 45, 59);

			// maxHealth
			canvas.State.ColorTint = MaxHealthTextColor;
			SetTextureRect (canvas, 3);
			canvas.FillRect (49, 59, 5, 5);
			var maxHealthText = $"{stats.MaxHealth:D2}";
			canvas.DrawText (maxHealthText, 55, 59);
		}

		private void DrawCombatUi (Canvas canvas)
		{
			canvas.State.SetMaterial (null as BatchInfo);

			if (combatUiData.PlayerAttacks) {
				canvas.State.ColorTint = EnemyHealthBackgroundColor;
				canvas.FillRect (63, 0, 1, 64);
				canvas.State.ColorTint = EnemyHealthColor;
				var enemyHealthPixels = MathF.RoundToInt (64f * combatUiData.RemainingHealth / combatUiData.MaxHealth);
				canvas.FillRect (63, 64 - enemyHealthPixels, 1, enemyHealthPixels);
			}

			var isHit = combatUiData.AttackScore > combatUiData.DefenseScore;
			canvas.State.ColorTint = isHit ? AttackTextColor : DefenseTextColor;
			canvas.FillRect (0, 59, 64, 5);
			canvas.State.SetMaterial (UiMat);
			canvas.State.ColorTint = ColorRgba.White;
			SetTextureRect (canvas, isHit ? 0 : 1);
			canvas.FillRect (51, 59, 5, 5);
			var behindText = isHit ? $"{combatUiData.AttackScore:D2}" : $"{combatUiData.DefenseScore:D2}";
			canvas.DrawText (behindText, 57, 59);

			var forwardX = MathF.RoundToInt (64f * (isHit ? combatUiData.DefenseScore : combatUiData.AttackScore) /
			                                 (isHit ? combatUiData.AttackScore : combatUiData.DefenseScore));
			canvas.State.SetMaterial (null as BatchInfo);
			canvas.State.ColorTint = isHit ? DefenseTextColor : AttackTextColor;
			canvas.FillRect (0, 59, forwardX, 5);

			canvas.State.SetMaterial (UiMat);
			canvas.State.ColorTint = ColorRgba.White;
			SetTextureRect (canvas, isHit ? 1 : 0);
			canvas.FillRect (Math.Max (forwardX - 13, 0), 59, 5, 5);
			var forwardText = isHit ? $"{combatUiData.DefenseScore:D2}" : $"{combatUiData.AttackScore:D2}";
			canvas.DrawText (forwardText, Math.Max (forwardX - 7, 6), 59);

			canvas.State.ColorTint = DamageTextColor;
			SetTextureRect (canvas, 4);
			canvas.FillRect (51, 51, 5, 5);
			var damageText = $"{combatUiData.Damage:D1}";
			canvas.DrawText(damageText, 57, 51);
		}

		private void SetTextureRect (Canvas canvas, int index)
		{
			var ratio = UiMat.Res.MainTexture.Res.UVRatio;
			canvas.State.TextureCoordinateRect = new Rect (ratio.X / 5 * index, 0, ratio.X / 5, ratio.Y);
		}
	}

	public class CombatUiData
	{
		public CombatUiData (bool playerAttacks, int attackScore, int defenseScore, int damage, int maxHealth, int remainingHealth)
		{
			PlayerAttacks = playerAttacks;
			AttackScore = attackScore;
			DefenseScore = defenseScore;
			Damage = damage;
			MaxHealth = maxHealth;
			RemainingHealth = remainingHealth;
		}

		public bool PlayerAttacks { get; }
		public int AttackScore { get; }
		public int DefenseScore { get; }
		public int Damage { get; }
		public int MaxHealth { get; }
		public int RemainingHealth { get; }
	}
}