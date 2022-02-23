package;

import flixel.FlxG;
import flixel.FlxSprite;

using flixel.util.FlxSpriteUtil;

// Part 2: Added a Screensaver Hero Class
class ScreensaverHero extends FlxSprite
{
	// Implement Constructor
	public function new()
	{
		// Invoke parent class constructor
		super(x, y);
		this.x = x;
		this.y = y;
		// Make a simple rectangle sprite
		var myRectangle = new FlxSprite(x, y);
		makeGraphic(30, 10, true);
		// Randomize the direction for the sprite to move each frame
		var x_m = FlxG.random.int(5, 50);
		var y_m = FlxG.random.int(5, 50);
		// Make the graphic move automatically each frame
		velocity.set(x_m, y_m);
	}

	// Override inherited update() function/method
	override public function update(elapsed:Float)
	{
		// Set the FlxSprite color property to CYAN and make it move each frame
		color = 0xFF00FFFF; // FlxColor.CYAN

		super.update(elapsed);
	}
}
