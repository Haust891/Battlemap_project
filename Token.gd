extends Node2D

var selected = false

func _ready():
	$Button.disabled = true
	$Button.visible = false

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):
		selected = true
		$Button.disabled = true
		$Button.visible = false
	if Input.is_action_just_pressed("right_click"):
		$Button.disabled = false
		$Button.visible = true
		
func _process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false


func _on_Button_pressed():
	queue_free()
