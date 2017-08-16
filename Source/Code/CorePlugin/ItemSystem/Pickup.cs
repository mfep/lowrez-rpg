using Duality;
using Duality.Drawing;
using Duality.Input;

namespace LowResRoguelike.ItemSystem
{
	[RequiredComponent(typeof(DiscreteTransform))]
	public abstract class Pickup : Component, ICmpInitializable
	{
		private const Key PickupKey = Key.Space;
		[DontSerialize] private bool onPlayer;

		public void OnInit (InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game) {
				TurnActionManager.PlayerMoved += OnPlayerMoved;
				DualityApp.Keyboard.KeyDown += OnKeyDown;
				Init ();
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
			TurnActionManager.PlayerMoved -= OnPlayerMoved;
			DualityApp.Keyboard.KeyDown -= OnKeyDown;
		}

		private void OnPlayerMoved ()
		{
			var player = GameObj.ParentScene.FindGameObject<PlayerMovement> ();
			onPlayer = player.GetComponent<DiscreteTransform> ().Position == GameObj.GetComponent<DiscreteTransform> ().Position;
			var uiRenderer = GameObj.ParentScene.FindComponent<UiRenderer> ();
			if (onPlayer) {
				uiRenderer.PickupToShow = this;
			} else if (uiRenderer.PickupToShow == this) {
				uiRenderer.PickupToShow = null;
			}
		}

		private void OnKeyDown (object sender, KeyboardKeyEventArgs e)
		{
			if (e.Key == PickupKey && onPlayer) {
				AudioPlayer.PlaySfx (Sfx.Pickup);
				PickupAction(GameObj.ParentScene.FindGameObject<PlayerMovement>());
			}
		}

		protected void DestroyPickup ()
		{
			GameObj.DisposeLater();
			var uiRenderer = GameObj.ParentScene.FindComponent<UiRenderer>();
			if (uiRenderer.PickupToShow == this)
			{
				uiRenderer.PickupToShow = null;
			}
		}

		public ColorRgba DisplayColor { get; set; }
		public abstract string DisplayText { get; }
		public virtual string DisplayText2 { get; } = null;
		protected abstract void PickupAction (GameObject playerObject);

		protected virtual void Init ()
		{
		}
	}

	public class HealthPotionPickup : Pickup
	{
		public int HealthRestored { get; set; }

		public override string DisplayText => $"Health (+{HealthRestored})";

		protected override void PickupAction (GameObject playerObject)
		{
			playerObject.GetComponent<CombatStats> ().ChangeHealth (HealthRestored);
			DestroyPickup ();
		}
	}

	public class ItemPickup : Pickup
	{
		public ItemInstance Item { get; set; }

		public override string DisplayText => Item.Material.ToString();
		public override string DisplayText2 => Item.TypeName ();

		protected override void PickupAction (GameObject playerObject)
		{
			Item = playerObject.GetComponent<PlayerStats> ().EquipItem (Item);
			if (Item.Material == Material.None) {
				DestroyPickup ();
			}
		}

		protected override void Init ()
		{
			Item = GameObj.ParentScene.FindComponent<LevelManager> ().GenerateItem ();
		}
	}

	public class ExitPickup : Pickup
	{
		public override string DisplayText => "Next";
		public override string DisplayText2 => "Level";

		protected override void PickupAction (GameObject playerObject)
		{
			GameObj.ParentScene.FindComponent<LevelManager> ().NextLevel ();
		}
	}
}