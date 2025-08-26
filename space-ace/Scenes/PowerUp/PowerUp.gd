extends Projectile

class_name PowerUp

enum PowerUpType { Health, Shield }

const SPEED: float = 80.0
const TEXTURES: Dictionary = {
	PowerUpType.Health: preload("res://assets/misc/powerupGreen_bolt.png"),
	PowerUpType.Shield: preload("res://assets/misc/shield_gold.png")
}

var power_up_type: PowerUpType = PowerUpType.Shield:
	get: return power_up_type

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
