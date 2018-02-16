import haxepunk.Entity;
import haxepunk.graphics.Image;

class Pipe extends Entity {
	public function new(x:Float, y:Float, image:Image) {
		type = "enemy";
		super(x, y, image);
	}

	public override function update() {
		this.x -= 2;

		if(x < -40) {
			scene.remove(this);
		}

		super.update();
	}
}