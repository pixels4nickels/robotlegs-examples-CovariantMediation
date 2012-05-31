package behaviours.scores
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class ScoreProvider extends Mediator
	{
		[Inject]
		public var view:IScoreDisplayable;

		private var highScore:uint = 500;
		private var lowScore:uint = 20;
		private var averageScore:uint = 315;

		public function ScoreProvider()
		{
		}

		override public function initialize():void
		{
			view.highScore = highScore;
			view.lowScore = lowScore;
			view.averageScore = averageScore;
		}
	}
}
