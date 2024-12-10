class_name Player

class Stuff:
	var _age: int = 10
	
	func _init(a: int) -> void:
		_age = a

static var player_count: int = 0

var _nick_name: String = "Nick"
var _health: int = 100

func _init(n: String, h: int):
	_nick_name = n
	_health = h
	player_count += 1

func hit() -> void:
	var st: Stuff = Stuff.new(25)
	print("st: %d" % st._age)
	_health -= 1

func say_status() -> void:
	print("%s %d" % [_nick_name, _health])
	

static func say_how_many() -> void:
	print("Player count is: ", Player.player_count)
