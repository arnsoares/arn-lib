package arn.textController
{
	import flupie.textanim.TextAnimBlock;
	import com.greensock.TweenMax;
	import arn.behaviors.ITextAnimBehavior;

	public class SimpleFadeBehavior implements ITextAnimBehavior
	{
	
		public function SimpleFadeBehavior()
		{
			super();
		}
		
		public function fadeIn(block:TextAnimBlock):void
		{
			block.alpha = 0.0;
			TweenMax.to(block, 0.7, {autoAlpha:1.0});
		}
		
		public function fadeOut(block:TextAnimBlock):void
		{
			TweenMax.to(block, 0.4, {autoAlpha:0.0});
		}
	
	}

}