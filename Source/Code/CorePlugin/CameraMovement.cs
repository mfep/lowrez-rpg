using Duality;

namespace LowResRoguelike
{
	public class CameraMovement : Component, ICmpUpdatable
	{
		public Point2 DisplayedTiles { get; set; }

		public void OnUpdate ()
		{
			var playerDiscretePos = GameObj.ParentScene.FindGameObject<PlayerMovement> ().GetComponent<DiscreteTransform> ().Position;
			var viewCoord = new Point2 (playerDiscretePos.X / DisplayedTiles.X, playerDiscretePos.Y / DisplayedTiles.Y);
			var grid = DiscreteTransform.Grid;
			var cameraPos = new Vector2 (DisplayedTiles.X * viewCoord.X + DisplayedTiles.X / 2, DisplayedTiles.Y * viewCoord.Y + DisplayedTiles.Y / 2) * grid;

			var z = GameObj.Transform.Pos.Z;
			GameObj.Transform.MoveToAbs (new Vector3 (cameraPos, z));
		}
	}
}