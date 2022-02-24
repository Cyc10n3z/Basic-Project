package;

import flixel.FlxG;
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
		var hero1 = new ScreensaverHero();
		hero1.screenCenter();
		add(hero1);
		var hero2 = new ScreensaverHero();
		hero2.screenCenter();
		add(hero2);
		var hero3 = new ScreensaverHero();
		hero3.screenCenter();
		add(hero3);
		// Part 3: Added a ControllableHero sprite
		var cHero = new ControllableHero();
		cHero.screenCenter();
		add(cHero);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
