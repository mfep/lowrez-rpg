using Duality;

namespace LowResRoguelike
{
	public enum Decision
	{
		LeftMove,
		UpMove,
		RightMove,
		DownMove,
		NoMove,
		NotDecided
	}

	public static class DecisionExtensions
	{
		public static Point2 ToDirection (this Decision dec)
		{
			switch (dec) {
				case Decision.LeftMove:
					return new Point2 (-1, 0);
				case Decision.UpMove:
					return new Point2 (0, -1);
				case Decision.RightMove:
					return new Point2 (1, 0);;
				case Decision.DownMove:
					return new Point2 (0, 1);
				default:
					return Point2.Zero;
			}
		}
	}
}