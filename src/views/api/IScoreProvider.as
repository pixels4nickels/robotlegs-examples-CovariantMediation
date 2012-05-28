package views.api
{

	public interface IScoreProvider
	{
		function set highScore( value:uint ):void;
		function set lowScore( value:uint ):void;
		function set averageScore( value:uint ):void;
	}
}
