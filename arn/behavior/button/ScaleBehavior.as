package arn.behavior.button
{
	import arn.behavior.button.ConceptButton;
	import com.greensock.TweenMax;
	import flash.display.MovieClip;
	import com.greensock.easing.Expo;

	public class ScaleBehavior extends ConceptButton
	{
		protected var _initialScale:Number;
		protected var _target:MovieClip;
		protected var _scale:Number;
		protected var _ease:Function;
		protected var _time:Number;
		protected var _targetScale:MovieClip;
	
		public function ScaleBehavior(time:Number = 0.5, scale:Number = 1.2, ease:Function = null)
		{
			if (ease == null) ease = Expo.easeOut;
			
			_time = time;
			_scale = scale;
			_ease = ease;
		}
		
		override public function show(target:MovieClip):void
		{
			//super.show(target);
		}
		
		override public function hide(target:MovieClip):void
		{
			//super.hide();
		}
		
		override public function over(target:MovieClip):void
		{
			if (!_initialScale) _initialScale = target.scaleX;
			TweenMax.to(target, _time, {scaleX:_scale, scaleY:_scale, ease:_ease});
		}
		
		override public function out(target:MovieClip):void
		{
			TweenMax.to(target, _time, {scaleX:_initialScale, scaleY:_initialScale, ease:_ease});
		}
		
	}

}