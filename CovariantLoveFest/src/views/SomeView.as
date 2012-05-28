package views
{
	import spark.components.BorderContainer;
	import spark.components.Label;
	import spark.components.TitleWindow;
	import spark.layouts.VerticalLayout;

	import views.api.IScoreProvider;

	public class SomeView extends TitleWindow implements IScoreProvider
	{
		public var highScoreTxt:Label;
		public var lowScoreTxt:Label;
		public var averageScoreTxt:Label;

		public function SomeView()
		{
			super();
			layout = new VerticalLayout();
			with ( layout as VerticalLayout )
			{
				paddingBottom = 5;
				paddingTop = 5;
				paddingLeft = 5;
				paddingRight = 5;
			}
			title = "Some View";
			highScoreTxt = addElement( new Label()) as Label;
			lowScoreTxt = addElement( new Label()) as Label;
			averageScoreTxt = addElement( new Label()) as Label;
		}

		public function set averageScore( value:uint ):void
		{
			averageScoreTxt.text = "Average Score: " + String( value );
		}

		public function set highScore( value:uint ):void
		{
			highScoreTxt.text = "High Score: " + String( value );
		}

		public function set lowScore( value:uint ):void
		{
			lowScoreTxt.text = "Low Score: " + String( value );
		}

	}
}
