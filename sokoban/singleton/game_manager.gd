extends Node

const LEVEL = preload("res://scenes/level/level.tscn")
const MAIN = preload("res://scenes/main/main.tscn")

var _level_selected: String = "1"

func _ready() -> void:
	SignalManager.on_level_selected.connect(on_level_connected)

func on_level_connected(ln: String) -> void:
	_level_selected = ln
	get_tree().change_scene_to_packed(LEVEL)

func load_main_scene() -> void:
	get_tree().change_scene_to_packed(MAIN)

func get_level_selected() -> String:
	return _level_selected
