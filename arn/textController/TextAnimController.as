package arn.textController
{
	import flash.display.MovieClip;
	import potato.core.IDisposable;
	import arn.behaviors.ITextAnimBehaviour;
	import flash.text.TextField;
	import flupie.textanim.TextAnim;
	import flash.display.Sprite;
	import flupie.textanim.TextAnimMode;
	import potato.display.safeRemoveChild;
	
	public class TextAnimController extends Sprite implements IDisposable
	{
		protected var _label:TextField;
		protected var _labelText:String;
		protected var _mode:String;
		protected var _split:String;
		protected var _intervalIn:Number;
		protected var _intervalOut:Number;
		protected var _behaviour:ITextAnimBehaviour;
		
		protected var _textAnim:TextAnim;
		
		public function TextAnimController(label:TextField,
		 																	labelText:String,
		 																	behaviour:ITextAnimBehaviour,
																			mode:String = "FIRST_LAST",
																			split:String = "CHARS",
																			interval_in:Number = 50,
																			interval_out:Number = 50)
		{
			super();

			_behaviour = behaviour;
			_mode = mode;
			_split = split;
			_intervalIn = interval_in;
			_intervalOut = interval_out;
			_label = label;
			_label.htmlText = labelText;
			
			_textAnim = new TextAnim(_label);
			_textAnim.blocksVisible = false;
		}
		
		public function show(text:String=null):void
		{
			if (text) {
				_textAnim.text = text;
			}
			_textAnim.effects = _behaviour.fadeIn; // The function that will be applied to this TextAnim's blocks.
			_textAnim.mode = _mode;
			_textAnim.split = _split;
			_textAnim.interval = _intervalIn;
			_textAnim.blocksVisible = false;
			_textAnim.start();
		}

		public function hide(text:String=null):void
		{
			if (text) {
			  _textAnim.text = text;
			}
			_textAnim.effects = _behaviour.fadeOut;
			_textAnim.mode = "LAST_FIRST";
			_textAnim.split = _split;
			_textAnim.interval = _intervalOut;
			_textAnim.blocksVisible = true;
			_textAnim.start();
		}
		
		public function set labelText(labelText:String):void
		{
      _label.htmlText = labelText;
		}
		
		public function set behavior(behavior:ITextAnimBehaviour):void
		{
		  _behaviour = behavior;
		}
		
		public function dispose():void 
		{
			safeRemoveChild(_label);
			_label = null;
		}
	
	}

}