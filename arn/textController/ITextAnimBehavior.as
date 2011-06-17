package arn.textController
{
	import flupie.textanim.TextAnimBlock;

	public interface ITextAnimBehavior
	{
		function fadeIn(block:TextAnimBlock):void;
		function fadeOut(block:TextAnimBlock):void;
	}

}

