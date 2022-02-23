package;

import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		add(new Hero(300, 300));
		// Added a new FlxText object and modified it's default appearance
		var text = add(new FlxText(300, 200, "Hello World!").setFormat("arial", 14, 0xFFFF0000, "center", OUTLINE, 0xFF00FFFF));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
