extends Node2D

const APPLE_SCENE = preload("res://apple.tscn");

@onready var piggy = $Piggy

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");

func get_spawn_position():
	var pigX = piggy.position.x
	var pigY = piggy.position.y
	print("X ", pigX, "Y: ", pigY);
	var spawnY = randi_range(15, height - 15);
	var spawnX = randi_range(15, width - 15);
	return [spawnY, spawnX];

func _on_piggy_apple_eaten():
	var apple = APPLE_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(apple);
	var spawn_position = get_spawn_position();
	apple.position.y = spawn_position[0];
	apple.position.x = spawn_position[1];
