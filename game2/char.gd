extends KinematicBody2D

var velocity = Vector2()
var speed = 420
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


	

func get_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	velocity = velocity.normalized() 

func get_pos():
	return global_position

func _physics_process(delta):
	get_input()
	velocity = velocity *speed*delta
	velocity = move_and_collide(velocity)
