extends Area2D

@export var speed = 75;

@onready var animation_player = $AnimationPlayer;
@onready var sprite_2d = $Sprite2D;

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");

var last_clicked_position = null;
var clicked = false;

signal apple_eaten;

func _process(delta):
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	if Input.is_action_pressed("move_by_mouse"):
		clicked = true;
		last_clicked_position = get_local_mouse_position();
		var target = last_clicked_position;
		target /= position;
		input_vector = target.normalized();
			
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
	scale *= 1.05;
	var world = get_tree().current_scene;
	world.size = scale.x
	print("pig size: ", scale.x);
