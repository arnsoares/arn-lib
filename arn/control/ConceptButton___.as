package arn.control
{
	import flash.display.Sprite;
	import flash.display.MovieClip;

	public class ConceptButton__ extends Sprite
	{
	
		public function ConceptButton__(asset:MovieClip, onClicked)
		{
			super();
		}
		
		// Change Behavior 
		public function set behavior(value: * ):void
		{
			_behavior = value;
		}
		
		// Show Button - Called when there is motion input button
		public function show():void
		{
			
		}
		
		// 
		public function over():void
		{
			
		}
		
		// Clicked state - If the button must remain in a state mark when clicked.
		public function clicked():void
		{
			
		}
		
		// Disarm the state "clicked" this button
		public function disarm():void
		{
			
		}
		
		/* 
			Out Button	- Called when the mouse leaves the area of validity of the button, if not the same has not been a "clicked".
						- There may be no state of "out".
		*/
		public function out():void
		{
			
		}
		
		// Hide Button
		public function hide():void
		{
			
		}
	
	}

}