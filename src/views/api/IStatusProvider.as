package views.api
{
	import actions.TestSignal;

	public interface IStatusProvider
	{
		function set statusMessage( value:String ):void;
	}
}
