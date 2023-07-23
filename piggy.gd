extends Area2D

@export var speed = 75;

@onready var animation_player = $AnimationPlayer;
@onready var sprite_2d = $Sprite2D;

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");

signal apple_eaten;

func _process(delta):
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if input_vector == Vector2.ZERO:
		animation_player.play("idle");
	else:
		animation_player.play("run");
		if input_vector.x != 0:
			sprite_2d.scale.x = sign(input_vector.x);
	position.x = clamp(position.x, 5, width - 5);
	position.y = clamp(position.y, 5, height - 5);
	position += input_vector * speed * delta;
	

func _on_area_entered(area):
	area.queue_free();
	apple_eaten.emit();
	scale *= 1.1;
	print("pig size: ", scale.x);
