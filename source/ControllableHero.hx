package;

import flixel.FlxG;
import flixel.FlxSprite;

using flixel.util.FlxSpriteUtil;

// Part 2: Added a ControllableHero Class
class ControllableHero extends FlxSprite
{
	// Movement variable
	static inline var speed:Int = 10;

	// Implement Constructor
	public function new()
	{
		// Invoke parent class constructor
		super(x, y);

		// Make a simple graphic on the rectangle sprite
		makeGraphic(30, 10, 0xFFFFA500, true); // FlxColor Orange
	}

	// Override inherited update() function/method
	override public function update(elapsed:Float)
	{
		keyMovement();
		super.update(elapsed);
	}

	// Keyboard Movement function/method
	public function keyMovement()
	{
		if (FlxG.keys.anyPressed([UP, W]))
		{
			this.y -= Math.round(speed);
		}
		if (FlxG.keys.anyPressed([DOWN, S]))
		{
			this.y += Math.round(speed);
		}
		if (FlxG.keys.anyPressed([LEFT, A]))
		{
			this.x -= Math.round(speed);
		}
		if (FlxG.keys.anyPressed([RIGHT, D]))
		{
			this.x += Math.round(speed);
		}
	}
}
