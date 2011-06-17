package arn.behavior.button
{
	import arn.behavior.button.ConceptButton;
	import flash.display.MovieClip;

	public class MotionBehavior extends ConceptButton 
	{
		protected var _lock:Boolean;
		
		public function MotionBehavior():void
		{
			super();
		}
	
		override public function show(target:MovieClip):void
		{
			target.gotoAndPlay("show");
		}
		
		override public function hide(target:MovieClip):void
		{
			//_lock = true;
			target.gotoAndPlay("hide");
		}
		
		override public function over(target:MovieClip):void
		{
			//_lock = false;
			target.gotoAndPlay("over");
		}
		
		override public function out(target:MovieClip):void
		{
			target.gotoAndPlay("out");
		}
	
	}

}