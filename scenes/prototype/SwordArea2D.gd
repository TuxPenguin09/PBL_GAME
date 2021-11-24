extends Area2D


onready var text = get_node("RichTextLabel")
var weaponEquiped = false

# Called when the node enters the scene tree for the first time.
func _ready():
	text.visible = false
	visible = true
	print("Weapon not Equiped")
	set_process_input(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _play():
	text.visible = true
	set_process_input(true)
	pass # Replace with function body.
	
func _input(event):
	if Input.is_key_pressed(KEY_E):
		visible = false
		weaponEquiped = true
		set_process_input(false)
		print("Weapon Equiped")


func _play1():
	text.visible = false
	set_process_input(false)
	pass # Replace with function body.