package;

import flixel.FlxState;
import haxe.display.Protocol.HaxeResponseErrorData;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		add(new Hero(300, 300));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
