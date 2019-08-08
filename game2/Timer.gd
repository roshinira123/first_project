extends Timer

var timer

func ready():
	
	timer = get_node("Timer")
	
	timer.set_wait_time(10)
	timer.connect("timeout", self, "on_Timer_timeout")
	


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
