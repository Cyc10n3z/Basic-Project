package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

using flixel.util.FlxSpriteUtil;

// Part 2: Added a Screensaver Hero Class
class ScreensaverHero extends FlxSprite
{
	// Implement Constructor
	public function new()
	{
		// Invoke parent class constructor
		super(x, y);

		// Make a simple graphic on the rectangle sprite
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
		// Set the ScreensaverHero sprite color property to change based on screen position
		if (y <= 300)
		{
			color = FlxColor.fromRGB(0, 255, 255, 0); // Cyan
		}
		else
		{
			color = FlxColor.fromRGB(255, 165, 0, 0); // Orange
		}

		super.update(elapsed);
	}
}
