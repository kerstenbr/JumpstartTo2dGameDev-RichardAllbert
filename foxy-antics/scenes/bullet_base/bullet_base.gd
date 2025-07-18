extends Area2D

class_name Bullet

var _direction: Vector2 = Vector2(100, 0)
var _life_span: float = 5.0
var _life_time: float = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += _direction * delta
	check_expired(delta)

func check_expired(delta: float) -> void:
	_life_time += delta
	if _life_time > _life_span:
		queue_free()

func setup(pos: Vector2, dir: Vector2, speed: float, life_span: float):
	_direction = dir.normalized() * speed
	_life_span = life_span
	global_position = pos

func _on_area_entered(_area: Area2D) -> void:
	print("bullet base _on_area_entered")
	queue_free()
