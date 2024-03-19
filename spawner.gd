extends Area2D

@export var timeout: float = 1.0
@onready var timer = %Timer
@onready var collision_shape_2d = %CollisionShape2D

@onready var element_scene = preload("res://rigid_body_2d.tscn")

var width = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	timeout = randf_range(0.3, 1)
	timer.wait_time = timeout

func _on_timer_timeout():
	var element: RigidBody2D = element_scene.instantiate()
	add_child(element)
	element.position = Vector2(randf_range(-width/2, width/2), 0)
