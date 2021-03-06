package reflex.measurement
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	import flight.events.PropertyEvent;
	
	// might break this up to multiples later
	// ie. measured.height, explicite.minWidth, etc
	
	/**
	 * @alpha
	 */
	public class Measurements implements IMeasurements
	{
		
		private var _width:Number;
		private var _height:Number;
		
		private var _minWidth:Number;
		private var _minHeight:Number;
		
		// todo: update for defined events
		// should these even be bindable?
		
		private var instance:IMeasurable;
		
		// [Bindable] public var maxWidth:Number;
		// [Bindable] public var maxHeight:Number;
		
		[Bindable]
		public function get width():Number { return _width; }
		public function set width(value:Number):void {
			_width = value;
			instance.setSize(value, instance.height); // ?? this is incorrect. measured will update even when explicite is set.
			//PropertyEvent.dispatchChange(instance, "width", instance["width"], value);
		}
		
		[Bindable]
		public function get height():Number { return _height; }
		public function set height(value:Number):void {
			_height = value;
			instance.setSize(instance.width, value); // ?? this is incorrect. measured will update even when explicite is set.
			//PropertyEvent.dispatchChange(instance, "height", instance["height"], value);
		}
		
		[Bindable]
		public function get minWidth():Number { return _minWidth; }
		public function set minWidth(value:Number):void {
			_minWidth = value;
		}
		
		[Bindable]
		public function get minHeight():Number { return _minHeight; }
		public function set minHeight(value:Number):void {
			_minHeight = value;
		}
		
		//private var _target:Object;
		
		public function Measurements(instance:IMeasurable, defaultWidth:Number = 160, defaultHeight:Number = 22) {
			this.instance = instance;
			_width = defaultWidth;
			_height = defaultHeight;
		}
		
	}
}