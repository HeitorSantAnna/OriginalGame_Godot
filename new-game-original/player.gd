extends CharacterBody3D

var speed = 2

var direction

var dir

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	dir = Input.get_vector("Left_Move", "Right_Move", "Up_Move", "Down_Move").normalized()
	
	var moviment = Vector3(dir.x, 0, dir.y)
	
	position += moviment * delta * speed
	pass
