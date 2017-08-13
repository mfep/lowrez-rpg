using System;
using System.Collections.Generic;
using System.Linq;
using Duality;

namespace LowResRoguelike
{
	public class TurnActionManager : Component, ICmpUpdatable
	{
		public static event Action NewTurn;
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

			while (notMovedSet.Count > 0) {
				var objToMove = notMovedSet.First ();
				foreach (var moveCmp in notMovedSet) {
					if (moveCmp.Initiative > objToMove.Initiative) {
						objToMove = moveCmp;
					}
				}

				var decision = objToMove.MakeDecision ();
				if (decision == Decision.NotDecided) {
					break;
				}
				var dirVector = decision.ToDirection ();

				var moveComp = objToMove as Component;
				moveComp.GameObj.GetComponent<DiscreteTransform> ().MoveBy (dirVector);
				if (decision != Decision.NotDecided) {
					notMovedSet.Remove (objToMove);
				}
			}
		}

		private void NextTurn ()
		{
			NewTurn?.Invoke ();
			notMovedSet = new HashSet<ICmpTurnAction> (GameObj.ParentScene.FindComponents<ICmpTurnAction> ());
		}
	}
}