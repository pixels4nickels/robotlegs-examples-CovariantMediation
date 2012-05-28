package views
{
	import spark.components.Label;
	import spark.components.TitleWindow;
	import spark.layouts.VerticalLayout;

	import views.api.IStatusProvider;

	public class YetAnotherView extends TitleWindow implements IStatusProvider
	{

		public var statusMessageTxt:Label;

		public function YetAnotherView()
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
			title = "Yet Another View";
			statusMessageTxt = addElement( new Label()) as Label;
		}

		public function set statusMessage( value:String ):void
		{
			statusMessageTxt.text = "Status: " + value;
		}

	}
}
