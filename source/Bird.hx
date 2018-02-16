import haxepunk.Entity;
import haxepunk.graphics.Image;
import haxepunk.input.Input;
import haxepunk.input.Key;

class Bird extends Entity {
	var velocity:Float;
	var gravity:Float;
	var jump_force:Float;
	var cooldown:Float;
	var last_time:Float;

	public function new(x:Float, y:Float, image_path:String) {
		velocity = 0;
		gravity = 0.2;
		jump_force = 15;
		last_time = 0;
		graphic = new Image(image_path);
		super(x, y);
	}

	public override function update() {
		if(collide("enemy", x, y) != null) {
			
		}

		velocity += gravity;
		
		if(Key.pressed(Key.A)) {
			velocity = -4;
		}

		y += velocity;
		super.update();
	}
}