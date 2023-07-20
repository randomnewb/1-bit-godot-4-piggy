extends Area2D

@export var speed = 75;

@onready var animation_player = $AnimationPlayer
@onready var sprite_2d = $Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if input_vector == Vector2.ZERO:
		animation_player.play("idle");
	else:
		animation_player.play("run");
		if input_vector.x != 0:
			sprite_2d.scale.x = sign(input_vector.x);
	position += input_vector * speed * delta;