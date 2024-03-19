extends RigidBody2D

@onready var polygon_2d = %Polygon2D

# Called when the node enters the scene tree for the first time.
func _ready():
	polygon_2d.set_color(get_random_color())
	set_mass(randf_range(0.2,2))

func get_random_color():
	var red = randf_range(0.0, 1.0)
	var green = randf_range(0.0, 1.0)
	var blue = randf_range(0.0, 1.0)
	return Color(red, green, blue)

func despawn():
	queue_free()
