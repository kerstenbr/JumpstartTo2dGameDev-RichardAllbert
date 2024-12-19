extends CharacterBody2D

class_name Tappy

const GRAVITY: float = 1500.0
const POWER: float = -500.0

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var explosion: AudioStreamPlayer2D = $Explosion
@onready var sound: AudioStreamPlayer2D = $Sound

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0, POWER)

# Called during the physics processing step of the main loop.
func _physics_process(delta: float) -> void:
	#print(velocity)
	velocity.y += GRAVITY * delta
	
	fly()
	
	move_and_slide()
	
	if is_on_floor() == true:
		die()
		
	if is_on_ceiling() == true:
		die()

func fly() -> void:
	if Input.is_action_just_pressed("fly") == true:
		velocity.y = POWER
		animation_player.play("power")

func die() -> void:
	animated_sprite_2d.stop()
	animation_player.play("death")
	explosion.play()
	sound.stop()
	set_physics_process(false)
	SignalManager.on_plane_died.emit()
