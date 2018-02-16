import haxepunk.Engine;
import haxepunk.HXP;

class Main extends Engine
{
	static function main()
	{
		new Main();
	}

	override public function init()
	{
		HXP.fullscreen = false;
		HXP.scene = new MainScene();
	}
}
