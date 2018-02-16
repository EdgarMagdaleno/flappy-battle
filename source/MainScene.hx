import haxepunk.Scene;
import haxepunk.graphics.tile.Backdrop;
import haxepunk.graphics.Image;
import haxepunk.Entity;

class MainScene extends Scene
{
	var upper_pipe_image:Image;
	var lower_pipe_image:Image;
	var pipe_length:Int;

	public function spawn_pipes() {
		var entrance:Float = 140 + Std.random(341);
		add(new Pipe(288, entrance - 80 - pipe_length, upper_pipe_image));
		add(new Pipe(288, entrance, lower_pipe_image));
	}

	override public function begin()
	{
		upper_pipe_image = new Image("graphics/upper_pipe.png");
		lower_pipe_image = new Image("graphics/lower_pipe.png");
		pipe_length = upper_pipe_image.height;

		add(new Entity(0, 0, new Image("graphics/background.png")));
		var base:Entity = new Entity(0, 512 - 112, new Image("graphics/base.png"));
		base.layer = -1;
		base.type = "enemy";
		add(base);
		add(new Bird(10, 10, "graphics/yellowbird-upflap.png"));

		var timer = new haxe.Timer(200);
		timer.run = spawn_pipes;
	}

	public function lose() {
		trace("hola");
	}
}
