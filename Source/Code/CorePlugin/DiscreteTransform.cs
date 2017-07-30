using Duality;
using Duality.Components;

namespace LowResRoguelike
{
	[RequiredComponent(typeof(Transform))]
	public class DiscreteTransform : Component, ICmpInitializable
	{
		public const float Grid = 4.0f;

		public Point2 Position
		{
			get => position;
			set
			{
				position = value;
				UpdatePosition ();
			}
		}

		private Point2 position;

		public void OnInit (InitContext context)
		{
			UpdatePosition ();
		}

		public void OnShutdown (ShutdownContext context)
		{
		}

		public void MoveTo (Point2 pos)
		{
			Position = pos;
		}

		public void MoveBy (Point2 delta)
		{
			Position += delta;
		}

		private void UpdatePosition ()
		{
			GameObj.Transform.MoveToAbs (new Vector2 (position.X * Grid, position.Y * Grid));
		}
	}
}