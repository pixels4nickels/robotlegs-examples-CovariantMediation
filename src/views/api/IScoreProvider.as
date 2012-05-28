package views.api
{

	public interface IScoreProvider
	{
		function set highScore( value:Number ):void;
		function set lowScore( value:Number ):void;
		function set averageScore( value:Number ):void;
	}
}
