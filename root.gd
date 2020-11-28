extends Node2D

var token = preload("res://Token.tscn")

func _ready():
	pass 

func _process(delta):
	pass

func _on_BrowseBattlemap_pressed():
	$FileDialog.popup()


func _on_FileDialog_file_selected(path):
	var image = Image.new()
	var image_texture = ImageTexture.new()
	image.load(path)
	image_texture.create_from_image(image)
	$Sprite.texture = image_texture 
	
	


func _on_CreateToken_pressed():
	var instancedtoken = token.instance()
	add_child(instancedtoken)
	$FileDialog2.popup()

	# Move the imgage selection to a button in the Token instead! easy fix instead of arraying and grouping?
func _on_FileDialog2_file_selected(path):
	var tokenimage = Image.new()
	var tokenimage_texture = ImageTexture.new()
	tokenimage.load(path)
	tokenimage_texture.create_from_image(tokenimage)
	$Token/Sprite.texture = tokenimage_texture
