package arn.control
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import arn.behavior.button.ConceptButton;
	import flash.display.DisplayObject;

	public class ButtonController extends Sprite
	{
		protected var _asset:MovieClip;
		protected var _behavior:ConceptButton;
		protected var _click:Function;
		protected var _target:MovieClip;
		protected var _enabled:Boolean = false;
	
		public function ButtonController(buttonAsset:MovieClip, behavior:ConceptButton, click:Function = null)
		{
			_asset = buttonAsset;
			_behavior = behavior;
			_click = click;

			// Initialize enabled
			enabled = false;
			
			buttonProperties(false, true, true);
			
			addChild(_asset);
		}
		
		public function show():void
		{
			_behavior.show(_asset);
		}
		
		public function hide():void
		{
			enabled = false;
			_behavior.hide(_asset);
		}
				
		public function buttonHandler(e:MouseEvent):void
		{
			
			switch(e.type)
			{
				case MouseEvent.ROLL_OVER:
				_behavior.over(_asset);
				break;
				
				case MouseEvent.ROLL_OUT:
				_behavior.out(_asset);
				break;
				
				case MouseEvent.CLICK:
				_click(e);
				break;
			}
		}
		
		public function set enabled(value:Boolean):void
		{
			_enabled = value;
			
			if(_enabled == true) {
				this.addEventListener(MouseEvent.ROLL_OVER, buttonHandler);
				this.addEventListener(MouseEvent.ROLL_OUT, buttonHandler);
				this.addEventListener(MouseEvent.CLICK, buttonHandler);
			}	else {
				trace("enable = false");
				this.removeEventListener(MouseEvent.ROLL_OVER, buttonHandler);
				this.removeEventListener(MouseEvent.ROLL_OUT, buttonHandler);
				this.removeEventListener(MouseEvent.CLICK, buttonHandler);
			}

			buttonProperties(false, value, value);
		}

		public function get enabled():Boolean
		{
			return _enabled;
		}
		
		/**
		 * description
		 * @param mChildren Boolean - mouseChildren
		 * @param bMode Boolean - buttonMode
		 * @param cHand Boolean - useHandCursor
		*/
		public function buttonProperties(mChildren:Boolean = false, bMode:Boolean = true, cHand:Boolean = true):void
		{
			mouseChildren = mChildren;
			buttonMode = bMode;
			useHandCursor = cHand;
		}
		
		public function dispose():void
		{	
			removeChild(_asset);
			_asset = null;
			_behavior = null;
			_click = null;
			_target = null;
						
			if(this.parent) this.parent.removeChild(this);
		}
	
	}

}