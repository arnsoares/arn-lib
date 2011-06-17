package arn.textController
{
  import arn.behaviors.ITextAnimBehaviour;
  import flupie.textanim.TextAnimBlock;
  import com.greensock.TweenMax;
  import com.greensock.easing.Quart;
  import com.greensock.easing.Quint;

  public class GazBlockBehavior implements ITextAnimBehaviour
  {
    protected var _delayRandom:Number = (Math.random() * 0.5);
    protected var _xRandom:Number = (Math.random() * 20) - 10;
    
  	public function GazBlockBehavior()
  	{
  		super();
  	}
  	
  	public function fadeIn(block:TextAnimBlock):void
  	{
      TweenMax.from(block, 0.2, {alpha:0});
  	  TweenMax.from(block, 0.8, {bezier:
																		[ {x:block.x + ((Math.random() * 80) - 40), y:Math.random() * -10},
																			{x:block.x + ((Math.random() * 80) - 40), y: (Math.random() * -30) - 10},
																			{x:block.x + ((Math.random() * 80) - 40), y: (Math.random() * -50) - 20} ],
                                      //orientToBezier:true,
																			ease:Quint.easeOut,
																			delay:0
																			});
  	}
  	
  	public function fadeOut(block:TextAnimBlock):void
  	{
      TweenMax.to(block, 0.15, {alpha:0, delay:0.45});
  	  TweenMax.to(block, 0.8, {bezier:
																		[ {x:block.x + ((Math.random() * 80) - 40), y:Math.random() * -10},
																			{x:block.x + ((Math.random() * 80) - 40), y: (Math.random() * -30) - 10},
																			{x:block.x + ((Math.random() * 80) - 40), y: (Math.random() * -50) - 20} ],
                                      orientToBezier:true,
																			ease:Quint.easeOut,
																			delay:0
																			});
  	}
	
  }

}