extends Node2D

enum PlayerState { ALIVE, DEAD }

# Called when the node enters the scene tree for the first time.
#func _ready():
	##print("hello world")
	#
	#var health: int = 100
	##print(health)
	##health += 1
	##print(health)
	#
	#var heigth: float = 50.1
	##print(heigth)
	#
	#var invisible: bool = true
	##print(invisible)
	#
	#var surname: String = "Kersten"
	##print(surname)
	#
	#const SPEED: int = 300
	##print(SPEED)
	#
	#const ALIVE: int = 0
	#const DEAD: int = 1
	#
	#var player_state: PlayerState = PlayerState.ALIVE
	#print(PlayerState.keys()[player_state])
	#
	#player_state = PlayerState.DEAD
	#print(PlayerState.keys()[player_state])
	

# Called when the node enters the scene tree for the first time.
#func _ready():
	#print_name()
	#var result: int = add_nums(5,40)
	#print("Result: ", result)
	#
#func print_name() -> void:
	#print("kerstenbr")
	#
#func add_nums(num1: int, num2: int) -> int:
	#return num1 + num2
	

#Called when the node enters the scene tree for the first time.
func _ready():
	var num1: int = 3
	var num2: int = 11
	
	print(num1 + num2)
	print(num1 - num2)
	print(num1 * num2)
	print(num1 / num2)
	
	print(num2 % num1)
