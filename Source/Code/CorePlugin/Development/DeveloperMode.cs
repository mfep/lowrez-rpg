using System;
using System.Linq;
using Duality;
using Duality.Drawing;
using Duality.Input;
using LowResRoguelike.GamePrefs;
using LowResRoguelike.ItemSystem;

namespace LowResRoguelike.Development
{
	public class DeveloperMode : Component, ICmpInitializable, ICmpRenderer
	{
		public bool DeveloperModeEnabled { get; set; }

		[DontSerialize] private bool isMenuVisible;
		[DontSerialize] private int currentMaterialIndex;
		[DontSerialize] private int currentWeaponClassIndex;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				DualityApp.Keyboard.KeyDown += OnKeyDown;
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
			DualityApp.Keyboard.KeyDown -= OnKeyDown;
		}

		public bool IsVisible (IDrawDevice device)
		{
			var group30Flag = (device.VisibilityMask & VisibilityFlag.Group30) != VisibilityFlag.None;
			return group30Flag;
		}

		public void Draw (IDrawDevice device)
		{
			if (!DeveloperModeEnabled) {
				return;
			}
			var canvas = new Canvas (device);
			canvas.State.ColorTint = ColorRgba.Red;
			canvas.DrawText ($"Development mode", 640f, 0f, 0f, Alignment.TopRight);
			if (isMenuVisible) {
				var menuLines = new[]
				{
					"Developer menu",
					"==============",
					"1 - Player death",
					"2 - Refill health",
					"3 - Advance to next level",
					"4 - Restart current level",
					"5 - Next weapon tier",
					"6 - Previous weapon tier",
					"7 - Cycle weapon class"
				};
				var menuString = string.Join ("/n", menuLines);
				var menuText = new FormattedText (menuString);
				canvas.DrawText (menuText, 320f, 40f);
			}
		}

		public float BoundRadius => 0f;

		private void OnKeyDown (object sender, KeyboardKeyEventArgs e)
		{
			if (!DeveloperModeEnabled) {
				return;
			}
			if (e.Key == Key.Enter) {
				isMenuVisible = !isMenuVisible;
			}
			if (!isMenuVisible) {
				return;
			}

			switch (e.Key) {
				case Key.Number1:
					DeveloperPlayerDeath ();
					break;
				case Key.Number2:
					DeveloperFillHealth ();
					break;
				case Key.Number3:
					DeveloperNextLevel ();
					break;
				case Key.Number4:
					DeveloperRestartLevel ();
					break;
				case Key.Number5:
					DeveloperNextTier ();
					break;
				case Key.Number6:
					DeveloperPreviousTier ();
					break;
				case Key.Number7:
					DeveloperCycleWeaponClass ();
					break;
			}
		}

		private void DeveloperPlayerDeath ()
		{
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<CombatStats> ().ChangeHealth (-1000);
		}

		private void DeveloperFillHealth ()
		{
			GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<CombatStats> ().ChangeHealth (1000);
		}

		private void DeveloperNextLevel ()
		{
			GameObj.ParentScene.FindComponent<LevelManager> ().NextLevel ();
		}

		private void DeveloperRestartLevel ()
		{
			var levelManager = GameObj.ParentScene.FindComponent<LevelManager> ();
			levelManager.LevelIndex--;
			levelManager.NextLevel ();
		}

		private void DeveloperNextTier ()
		{
			var maxTier = PrefLoader.Materials.Count - 1;
			currentMaterialIndex = Math.Min (currentMaterialIndex + 1, maxTier);
			EquipPlayerWithCurrentTier ();
		}

		private void DeveloperPreviousTier ()
		{
			currentMaterialIndex = Math.Max (currentMaterialIndex - 1, 0);
			EquipPlayerWithCurrentTier ();
		}

		private void DeveloperCycleWeaponClass ()
		{
			var weaponClassCount = PrefLoader.Weapons.Count;
			currentWeaponClassIndex = (currentWeaponClassIndex + 1) % weaponClassCount;
			EquipPlayerWithCurrentTier ();
		}

		private void EquipPlayerWithCurrentTier ()
		{
			var playerStats = GameObj.ParentScene.FindComponent<PlayerStats> ();
			for (var i = 0; i <= (int)ItemSlot.Last; i++) {
				var slot = (ItemSlot)i;
				var material = PrefLoader.Materials[currentMaterialIndex];
				ItemClass itemClass;
				if (slot == ItemSlot.WeaponHand) {
					if (currentMaterialIndex == 0) {
						continue;
					}
					itemClass = PrefLoader.Weapons[currentWeaponClassIndex];
				} else {
					itemClass = PrefLoader.Items.First (item => item.Slot == slot);
				}
				var itemInstance = new ItemInstance
				{
					ItemClass = itemClass,
					Material = material
				};
				playerStats.EquipItem (itemInstance);
			}
		}
	}
}
