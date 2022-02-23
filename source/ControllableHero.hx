package;

import flixel.FlxG;
import flixel.FlxSprite;

using flixel.util.FlxSpriteUtil;

// Part 2: Added a ControllableHero Class
class ControllableHero extends FlxSprite
{
	// Movement variable
	var speed = 10;

	// Implement Constructor
	public function new()
	{
		// Invoke parent class constructor
		super(x, y);
		this.x = x;
		this.y = y;

		// Make a simple rectangle sprite
		var myRectangle = new FlxSprite(x, y);
		makeGraphic(30, 10, 0xFFFFA500, true); // FlxColor Orange
	}

	// Override inherited update() function/method
	override public function update(elapsed:Float)
	{
		// Keyboard movement
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

		super.update(elapsed);
	}
}
