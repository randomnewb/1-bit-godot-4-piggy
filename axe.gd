extends Area2D

@export var speed = 10;
@onready var piggy = $"../Piggy"

var PORKCHOP_SCENE = preload("res://porkchop.tscn");
var EXPLOSION_EFFECT_SCENE = preload("res://explosion_effect.tscn");

func _process(delta):
	position = position.move_toward(piggy.position, speed * delta);
	
	if position.x > piggy.position.x:
		scale.x = 1;
	else:
		scale.x = -1;

func _on_area_entered(area):
	var pigSize = area.scale;
	area.queue_free();
	queue_free();
	var world = get_tree().current_scene;
	
	var porkchop = PORKCHOP_SCENE.instantiate();
	world.add_child.call_deferred(porkchop);
	porkchop.scale = pigSize;
	porkchop.position = global_position;

	var explosion = EXPLOSION_EFFECT_SCENE.instantiate();
	world.add_child.call_deferred(explosion);
	explosion.global_position = global_position;
