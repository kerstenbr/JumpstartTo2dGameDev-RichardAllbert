extends Node2D

@onready var animal_start: Marker2D = $AnimalStart
const ANIMAL: PackedScene = preload("res://Scenes/Animal/animal.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_animal()
	SignalManager.on_animal_died.connect(add_animal)

func add_animal() -> void:
	var animal = ANIMAL.instantiate()
	animal.position = animal_start.position
	add_child(animal)
