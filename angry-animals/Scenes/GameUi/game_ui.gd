extends Control

const MAIN = preload("res://Scenes/Main/main.tscn")

@onready var level_label: Label = $MarginContainer/VB/LevelLabel
@onready var attempts_label: Label = $MarginContainer/VB/AttemptsLabel
@onready var vb_2: VBoxContainer = $MarginContainer/VB2
@onready var game_sound: AudioStreamPlayer = $GameSound


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_label.text = "Level: %s" % ScoreManager.get_level_selected()
	update_attempts(0)
	SignalManager.on_score_updated.connect(update_attempts)
	SignalManager.on_level_complete.connect(on_level_complete)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_packed(MAIN)

func update_attempts(attempts: int) -> void:
	attempts_label.text = "Attempts:  %s" % attempts

func on_level_complete() -> void:
	vb_2.show()
	game_sound.play()
