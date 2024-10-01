extends Node2D

enum PlayerState { ALIVE, DEAD }

# Called when the node enters the scene tree for the first time.
func _ready():
	#print("hello world")
	
	var health: int = 100
	#print(health)
	#health += 1
	#print(health)
	
	var heigth: float = 50.1
	#print(heigth)
	
	var invisible: bool = true
	#print(invisible)
	
	var surname: String = "Kersten"
	#print(surname)
	
	const SPEED: int = 300
	#print(SPEED)
	
	const ALIVE: int = 0
	const DEAD: int = 1
	
	var player_state: PlayerState = PlayerState.ALIVE
	print(PlayerState.keys()[player_state])
	
	player_state = PlayerState.DEAD
	print(PlayerState.keys()[player_state])
	
