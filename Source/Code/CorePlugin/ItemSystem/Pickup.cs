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
				DualityApp.Keyboard.KeyUp += OnKeyUp;
			}
		}

		public void OnShutdown (ShutdownContext context)
		{
			TurnActionManager.PlayerMoved -= OnPlayerMoved;
			DualityApp.Keyboard.KeyUp -= OnKeyUp;
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

		private void OnKeyUp (object sender, KeyboardKeyEventArgs e)
		{
			if (e.Key == PickupKey && onPlayer) {
				PickupAction (GameObj.ParentScene.FindGameObject<PlayerMovement> ());
				GameObj.DisposeLater ();
				var uiRenderer = GameObj.ParentScene.FindComponent<UiRenderer> ();
				if (uiRenderer.PickupToShow == this) {
					uiRenderer.PickupToShow = null;
				}
			}
		}

		public ColorRgba DisplayColor { get; set; }
		public abstract string DisplayText { get; }
		protected abstract void PickupAction (GameObject playerObject);
	}

	public class HealthPotionPickup : Pickup
	{
		public int HealthRestored { get; set; }

		public override string DisplayText => $"Health (+{HealthRestored})";

		protected override void PickupAction (GameObject playerObject)
		{
			playerObject.GetComponent<CombatStats> ().ChangeHealth (HealthRestored);
		}
	}

	public class ItemPickup : Pickup
	{
		public ItemInstance Item { get; set; }

		public override string DisplayText => Item.ToString ();

		protected override void PickupAction (GameObject playerObject)
		{
			playerObject.GetComponent<PlayerStats> ().EquipItem (Item);
		}
	}
}