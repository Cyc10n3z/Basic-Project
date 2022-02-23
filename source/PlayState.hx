package;

import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create()
	{
		// Part 1: Added a new FlxText text object and modified it's default appearance
		var text = new FlxText(300, 200, "Hello World!");
		text.setFormat("Times New Roman", 100, 0xFFFF0000, OUTLINE, 0xFF00FFFF);
		text.screenCenter();
		add(text);

		// Part 2: Added multiple ScreensaverHero sprites
		var Hero1 = new ScreensaverHero();
		Hero1.screenCenter();
		add(Hero1);
		var Hero2 = new ScreensaverHero();
		Hero2.screenCenter();
		add(Hero2);
		var Hero3 = new ScreensaverHero();
		Hero3.screenCenter();
		add(Hero3);
		// Part 3: Added a ControllableHero sprite
		var cHero = new ControllableHero();
		add(cHero);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
