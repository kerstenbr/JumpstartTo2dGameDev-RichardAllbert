extends Node2D

class_name Pipes

const OFF_SCREEN: float = -500.0
@onready var score_sound: AudioStreamPlayer = $ScoreSound
@onready var visible_on_screen_notifier_2d: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D

func _ready() -> void:
	SignalManager.on_plane_died.connect(_on_plane_died)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= delta * GameManager.SCROLL_SPEED
	check_off_screen()

func check_off_screen() -> void:
	if visible_on_screen_notifier_2d.global_position.x < get_viewport_rect().position.x:
		queue_free()

func _on_plane_died() -> void:
	set_process(false)

func _on_screen_exited():
	#queue_free()
	pass

func _on_pipe_body_entered(body: Node2D) -> void:
	#Using the Class to kill the plane
	if body is Tappy:
		if body.has_method("die") == true:
			body.die()
	#Using the Groups to kill the plane
	#if body.is_in_group(GameManager.GROUP_PLANE) == true:
		#if body.has_method("die") == true:
			#body.die()

func _on_laser_body_entered(body: Node2D) -> void:
	if body is Tappy:
		score_sound.play()
		ScoreManager.increment_score()
