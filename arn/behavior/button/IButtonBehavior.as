package arn.behavior.button
{
	import flash.display.MovieClip;

	public interface IButtonBehavior
	{
		function over(target:MovieClip)	:void;
		function out(target:MovieClip)	:void;
	}

}

