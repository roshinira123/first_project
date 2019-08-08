extends KinematicBody2D

                                                             
onready var Naruto = get_node("../naruto")

var speed = 320
var ai_think_time = 10.0
var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func get_direction():
	return Naruto.position -  position
	
func _physics_process(delta):
	velocity = get_direction()
	velocity = velocity.normalized()*speed *delta
	var collison_detect = move_and_collide(velocity)
	if(collison_detect != null ):
		if(collison_detect.collider.name == "naruto"):
			get_tree().reload_current_scene()

	
	
