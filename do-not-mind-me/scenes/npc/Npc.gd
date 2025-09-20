extends CharacterBody2D

@onready var nav_agent: NavigationAgent2D = $NavAgent
@onready var debug_label: Label = $DebugLabel

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("set_target"):
		nav_agent.target_position = get_global_mouse_position()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	set_label()

func set_label():
	var s: String = "Fin:%s\n" % nav_agent.is_navigation_finished()
	s += "TG_AREA:%s\n" % nav_agent.is_target_reached()
	s += "CAN_REA:%s\n" % nav_agent.is_target_reachable()
	s += "TAR:%s" % nav_agent.target_position
	debug_label.text = s
