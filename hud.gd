extends CanvasLayer

@onready var message = $Container/Message
@onready var score_label = $Container/ScoreLabel
@onready var message_timer = $Container/MessageTimer
@onready var start_button = $Container/StartButton

signal start_game;

func update_score(score):
	score_label.text = str(score)

func _on_start_button_pressed():
	start_button.hide()
	start_game.emit()

func _on_message_timer_timeout():
	message.hide();



