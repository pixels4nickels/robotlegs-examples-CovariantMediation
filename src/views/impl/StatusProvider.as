package views.impl
{
	import actions.TestSignal;

	import robotlegs.bender.bundles.mvcs.Mediator;

	import views.api.*;

	public class StatusProvider extends Mediator
	{
		[Inject]
		public var view:IStatusProvider;

		public function StatusProvider()
		{
			trace( "can we exist?" );
		}

		override public function initialize():void
		{
			view.statusMessage = "All Systems Go!";
		}
	}
}
