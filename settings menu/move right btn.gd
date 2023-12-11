extends Button

@export var action_right: String = "ui_right"

func _ready():
	set_process_unhandled_input(false)
	display_key()
	

func display_key():
	text = InputMap.action_get_events(action_right)[0].as_text()


func _on_toggled(button_pressed):
	set_process_unhandled_input(button_pressed)
	if (button_pressed):
		text = '...'
	else:
		display_key()
	
func _unhandled_key_input(event):
	remap_key(event)
	button_pressed = false

func remap_key(event):
	InputMap.action_erase_event(action_right, InputMap.action_get_events(action_right)[0])
	InputMap.action_add_event(action_right, event)
	
	text = "%s" % event.as_text()
