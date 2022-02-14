package;

import flixel.FlxSprite;

class Hero extends FlxSprite
{
	// Implemented Constructor
	public function new(x, y)
	{
		// Invoke parent class constructor
		super(x, y);
		// Child class constructor variables
		this.x = x;
		this.y = y;
	}

	// Overriden inherited update() function/method
	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
