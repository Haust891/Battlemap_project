extends Camera2D


var speed = 20

func _ready():
	pass # Replace with function body.

func _process(delta):
	var inpx = (int(Input.is_action_pressed("right"))
					   - int(Input.is_action_pressed("left")))
	var inpy = (int(Input.is_action_pressed("down"))
					   - int(Input.is_action_pressed("up")))
	position.x = lerp(position.x, position.x + inpx *speed * zoom.x,speed * delta)
	position.y = lerp(position.y, position.y + inpy *speed * zoom.y,speed * delta)
