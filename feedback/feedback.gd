extends Node2D

@onready var button_arr:Array=[null, null, null, null, null]
@onready var button_pressed: int

# Called when the node enters the scene tree for the first time.
func _ready():
	button_arr[0]=$Control/HBoxContainer/star1
	button_arr[1]=$Control/HBoxContainer/star2
	button_arr[2]=$Control/HBoxContainer/star3
	button_arr[3]=$Control/HBoxContainer/star4
	button_arr[4]=$Control/HBoxContainer/star5
	button_pressed = 5
	for i in range(0,button_pressed):
		button_arr[i].set_pressed_no_signal(true)
		#print(i)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://main menu/main_menu.tscn")

func print_stars():
	for i in range(0,button_pressed):
		button_arr[i].set_pressed_no_signal(true)
		#print(i)
	for i in range(button_pressed, 5):
		button_arr[i].set_pressed_no_signal(false)
		#print(i)
	pass

func _on_star_1_pressed():
	button_pressed=1
	print_stars()
	pass # Replace with function body.
	
func _on_star_2_pressed():
	button_pressed=2
	print_stars()
	pass # Replace with function body.


func _on_star_3_pressed():
	button_pressed=3
	print_stars()
	pass # Replace with function body.


func _on_star_4_pressed():
	button_pressed=4
	print_stars()
	pass # Replace with function body.


func _on_star_5_pressed():
	button_pressed=5
	print_stars()
	pass # Replace with function body.
