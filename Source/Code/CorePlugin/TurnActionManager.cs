using System;
using System.Collections.Generic;
using System.Linq;
using Duality;

namespace LowResRoguelike
{
	public class TurnActionManager : Component, ICmpUpdatable
	{
		public float FightWaitTime { get; set; }
		public bool IsInCombat { get; private set; }

		public static event Action NewTurn;
		public static event Action PlayerMoved;
		[DontSerialize] private HashSet<ICmpTurnAction> notMovedSet = new HashSet<ICmpTurnAction> ();
		[DontSerialize] private TimeSpan nextMovementQuery = TimeSpan.Zero;

		public void OnUpdate ()
		{
			if (Time.GameTimer > nextMovementQuery) {
				IsInCombat = false;
				DoMovement ();
			}
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
					if (decision == Decision.Fight) {
						IsInCombat = true;
						nextMovementQuery = Time.GameTimer + TimeSpan.FromSeconds (FightWaitTime);
						break;
					}
				}
				if (moveComp.GameObj.GetComponent<PlayerMovement> () != null) {
					PlayerMoved?.Invoke ();
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