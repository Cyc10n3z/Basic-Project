package;

import flixel.FlxG;
import flixel.FlxSprite;

using flixel.util.FlxSpriteUtil;

// Part 3: Bonus 1
class Wall extends FlxSprite
{
	// Implement Constructor
	public function new()
	{
		// Invoke parent class constructor
		super(x, y);
		this.x = x;
		this.y = y;

		// Make a Wall sprite
		var wall = new FlxSprite();
	}

	// Override inherited update() function/method
	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
