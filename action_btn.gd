extends Button

@export var action: String



func _init():
	toggle_mode = true
	
	
func _ready():
	set_process_unhandled_input(false)
	display_key()

func display_key():
	text = "%s" % InputMap.action_get_events(action)[0].as_text()


func _on_toggled(button_pressed):
	set_process_unhandled_input(button_pressed)
	if button_pressed:
		text = '...'
		release_focus()
	else:
		display_key()
		grab_focus()


func _unhandled_key_input(event):
	if event.pressed:
		InputMap.action_erase_events(action)
		InputMap.action_add_event(action, event)
		button_pressed = false
