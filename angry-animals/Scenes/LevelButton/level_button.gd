extends TextureButton

const HOVER_SCALE: Vector2 = Vector2(1.1, 1.1)
const DEFAULT_SCALE: Vector2 = Vector2(1.0, 1.0)

@export var level_number: int = 1

@onready var level_label: Label = $MarginContainer/VBoxContainer/LevelLabel
@onready var score_label: Label = $MarginContainer/VBoxContainer/ScoreLabel

var _level_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_level_scene = load("res://Scenes/Level/level%s.tscn" % level_number)
	var best_sc = ScoreManager.get_best_for_level(str(level_number))
	score_label.text = str(best_sc)
	level_label.text = str(level_number)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mouse_entered() -> void:
	scale = HOVER_SCALE

func _on_mouse_exited() -> void:
	scale = DEFAULT_SCALE

func _on_pressed() -> void:
	ScoreManager.set_selected_level(level_number)
	get_tree().change_scene_to_packed(_level_scene)
