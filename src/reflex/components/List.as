package reflex.components
{
	import flight.binding.Bind;
	import flight.list.ArrayList;
	import flight.list.IList;
	import flight.position.IPosition;
	import reflex.layouts.ILayout;
	import reflex.layouts.VerticalLayout;
	import reflex.skins.ListBoxSkin;
	import reflex.skins.ListSkin;
	
	/**
	 * @alpha
	 */
	public class List extends Component
	{
		
		[Bindable] public var layout:ILayout;
		[Bindable] public var position:IPosition;
		[Bindable] public var template:Object;
		[Bindable] public var dataProvider:IList;
		
		public function List()
		{
			if(skin == null) {
				skin = new ListSkin();
			}
			if(layout == null) {
				layout = new VerticalLayout();
			}
			if(template == null) {
				template = Button;
			}
		}
		/*
		protected function init():void
		{
			var listBoxSkin:ListBoxSkin = new ListBoxSkin();
			skin = listBoxSkin;
			position = listBoxSkin.position;
			
			Bind.addBinding(listBoxSkin, "template", this, "template", true);
			Bind.addBinding(listBoxSkin, "dataProvider", this, "dataProvider", true);
		}
		*/
	}
}