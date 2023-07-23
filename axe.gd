extends Area2D

@export var speed = 10;
@onready var piggy = $"../Piggy"

func _process(delta):
	position = position.move_toward(piggy.position, speed * delta);

func _on_area_entered(area):
	area.queue_free();
	queue_free();
