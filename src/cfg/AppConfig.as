package cfg
{
	import org.swiftsuspenders.Injector;

	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;

	import views.impl.ScoreProvider;
	import views.impl.StatusProvider;
	import views.api.IScoreProvider;
	import views.api.IStatusProvider;

	public class AppConfig
	{

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var injector:Injector;

		[PostConstruct]
		public function configure():void
		{
			mediatorMap.map( IStatusProvider ).toMediator( StatusProvider );
			mediatorMap.map( IScoreProvider ).toMediator( ScoreProvider );
		}
	}
}
