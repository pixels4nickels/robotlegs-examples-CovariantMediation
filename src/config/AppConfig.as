package config
{
	import org.swiftsuspenders.Injector;

	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;

	import behaviours.scores.ScoreProvider;
	import behaviours.status.StatusProvider;
	import behaviours.scores.IScoreDisplayable;
	import behaviours.status.IStatusDisplayable;

	public class AppConfig
	{

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var injector:Injector;

		[PostConstruct]
		public function configure():void
		{
			mediatorMap.map( IStatusDisplayable ).toMediator( StatusProvider );
			mediatorMap.map( IScoreDisplayable ).toMediator( ScoreProvider );
		}
	}
}
