extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var origional_size := scale
var grow_size := Vector2(1.1, 1.1)


func _on_mouse_entered() ->void:
	Sfx.play_hover()
	grow_btn(grow_size, .1)


func _on_mouse_exited() ->void:
	grow_btn(origional_size, .1)

func grow_btn(end_size: Vector2, duration: float) ->void:
		var tween := create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
		tween.tween_property(self, 'scale', end_size, duration)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Sfx.play_click()
	get_tree().change_scene_to_file("res://main menu/main_menu.tscn")
	pass # Replace with function body.
