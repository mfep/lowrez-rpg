using System.Collections.Generic;
using System.Linq;
using Duality;

namespace LowResRoguelike
{
	public class TurnActionManager : Component, ICmpUpdatable
	{
		[DontSerialize] private HashSet<ICmpTurnAction> notMovedSet = new HashSet<ICmpTurnAction> ();

		public void OnUpdate ()
		{
			DoMovement ();
		}

		private void DoMovement ()
		{
			if (notMovedSet.Count == 0) {
				NextTurn ();
				return;
			}

			var objToMove = notMovedSet.First ();
			foreach (var moveCmp in notMovedSet) {
				if (moveCmp.Initiative > objToMove.Initiative) {
					objToMove = moveCmp;
				}
			}

			var decision = objToMove.MakeDecision ();
			var dirVector = Point2.Zero;
			switch (decision) {
				case Decision.LeftMove:
					dirVector = new Point2 (-1, 0);
					break;
				case Decision.UpMove:
					dirVector = new Point2 (0, -1);
					break;
				case Decision.RightMove:
					dirVector = new Point2 (1, 0);;
					break;
				case Decision.DownMove:
					dirVector = new Point2 (0, 1);
					break;
				case Decision.NoMove:
					break;
				case Decision.NotDecided:
					return;
			}

			var moveComp = objToMove as Component;
			moveComp.GameObj.GetComponent<DiscreteTransform> ().MoveBy (dirVector);
			if (decision != Decision.NotDecided) {
				notMovedSet.Remove (objToMove);
			}
		}

		private void NextTurn ()
		{
			notMovedSet = new HashSet<ICmpTurnAction> (GameObj.ParentScene.FindComponents<ICmpTurnAction> ());
		}
	}
}