extends CanvasLayer

@onready var start_button = $Container/StartButton;
@onready var highscore_message = $Container/HighScoreMessage;
@onready var elapsed_timer = $Container/ElapsedTimer


signal start_game;

func _on_start_button_pressed():
	start_button.hide()
	highscore_message.hide();
	start_game.emit()
	var world = get_tree().current_scene;
	world.time = 0;
	elapsed_timer.start();

func _on_score_timer_timeout():
	var world = get_tree().current_scene;
	world.time += 1;
