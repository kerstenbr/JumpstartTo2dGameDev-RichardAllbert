extends Area2D

@export var speed: float = 300.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	#if Input.is_action_pressed("left"):
		#position.x = position.x - speed * delta
	#if Input.is_action_pressed("right"):
		#position.x = position.x + speed * delta
	
	var input_amount: float = Input.get_axis("left", "right")
	# input_amount will be -1,0 or 1
	position.x = position.x + delta * speed * input_amount
