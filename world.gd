extends Node2D

const APPLE_SCENE = preload("res://apple.tscn");
const PIGGY_SCENE = preload("res://piggy.tscn");
const AXE_SCENE = preload("res://axe.tscn")

@onready var gameover_message = $HUD/Container/Message;
@onready var start_button = $HUD/Container/StartButton;
@onready var time_label = $HUD/Container/TimeLabel;
@onready var size_label = $HUD/Container/SizeLabel;
@onready var highscore_time = $HUD/Container/HighScoreTime;
@onready var highscore_size = $HUD/Container/HighScoreSize
@onready var elapsed_timer = $HUD/Container/ElapsedTimer;

var height = ProjectSettings.get_setting("display/window/size/viewport_height");
var width = ProjectSettings.get_setting("display/window/size/viewport_width");
var corners = [[0,0],[width, height], [0, height], [width, 0]]

var time = 0 :
	get:
		return time;
	set(value):
		time = value;
		time_label.text = "Round Timer: " + str(time);

var size = 0 :
	get:
		return size;
	set(value):
		size = value;
		size_label.text = "Size: " + str(snapped(size, 0.01));
		

func _on_hud_start_game():
	for node in get_tree().get_nodes_in_group("Entities"):
		node.queue_free();
	gameover_message.hide();
	_on_piggy_apple_eaten();
	spawn_piggy();
	var axe_spawn = corners.pick_random();
	spawn_axe(axe_spawn[0], axe_spawn[1]);
	
func get_spawn_position():
	var spawnY = randi_range(15, height - 15);
	var spawnX = randi_range(15, width - 15);
	return [spawnY, spawnX];

func spawn_piggy():
	var piggy = PIGGY_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(piggy);
	piggy.position.y = height / 2;
	piggy.position.x = width / 2;
	piggy.connect("apple_eaten", _on_piggy_apple_eaten);

func spawn_axe(positionX, positionY):
	var axe = AXE_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(axe);
	axe.position.x = positionX;
	axe.position.y = positionY;
	axe.connect("gameover", _on_gameover);

func _on_piggy_apple_eaten():
	var apple = APPLE_SCENE.instantiate();
	var world = get_tree().current_scene;
	world.add_child.call_deferred(apple);
	var spawn_position = get_spawn_position();
	apple.position.y = spawn_position[0];
	apple.position.x = spawn_position[1];
	
func _on_gameover():
	var data = SaveAndLoad.load_highscore()

	if data != null:
		if (time <= data.best_time and size >= data.best_size) or (time >= data.best_time and size >= data.best_size):
			SaveAndLoad.save_highscore({"best_size": size, "best_time": time})
			highscore_time.text = "Previous Best Time Alive: " + str(time);
			highscore_size.text = "Previous Best Size: " + str(snapped(size,0.01));
		else:
			highscore_time.text = "Previous Best Time Alive: " + str(data.best_time);
			highscore_size.text = "Previous Best Size: " + str(snapped(data.best_size,0.01));
	if data == null:
		SaveAndLoad.save_highscore({"best_size": size, "best_time": time});
		highscore_time.text = "Previous Best Time Alive: " + str(time);
		highscore_size.text = "Previous Best Size: " + str(snapped(size,0.01));
	
	elapsed_timer.stop();
	await get_tree().create_timer(1.0).timeout;

	gameover_message.show();
	highscore_time.show();
	highscore_size.show();
	start_button.show()
	
	for node in get_tree().get_nodes_in_group("Entities"):
		node.queue_free();
