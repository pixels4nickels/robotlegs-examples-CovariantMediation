package behaviours.status
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class StatusProvider extends Mediator
	{
		[Inject]
		public var view:IStatusDisplayable;

		public function StatusProvider()
		{

		}

		override public function initialize():void
		{
			view.statusMessage = "All Systems Go!";
		}
	}
}
