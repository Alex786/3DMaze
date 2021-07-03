extends Control

signal LowProcessorMode

onready var LowProcessor_Mode = OS.low_processor_usage_mode
onready var ScreenTransition = $AnimationPlayer
onready var timer_length = 0.2

func _on_Control_ready():
	if LowProcessor_Mode:
		$"CenterContainer/Settings Page/Low Processor CheckButton".pressed = true
	if not LowProcessor_Mode:
		$"CenterContainer/Settings Page/Low Processor CheckButton".pressed = false

func _on_Start_pressed():
	get_tree().change_scene("res://interface/FinalMenu.tscn")

func _on_Exit_pressed():
	$ColorRect.visible = true
	ScreenTransition.play("interfaceHide")
	yield(get_tree().create_timer(timer_length), "timeout")
	get_tree().quit()

func _on_Itch_Page_pressed():
	OS.shell_open("https://lordop.itch.io/")

func _on_Controls_pressed():
	$"CenterContainer/Main Screen".visible = false
	$"CenterContainer/Controls Page".visible = true

func _on_Back_From_Controls_pressed():
	$"CenterContainer/Main Screen".visible = true
	$"CenterContainer/Controls Page".visible = false

func _on_Settings_pressed():
	$"CenterContainer/Main Screen".visible = false
	$"CenterContainer/Settings Page".visible = true

func _on_Back_From_Settings_pressed():
	$"CenterContainer/Main Screen".visible = true
	$"CenterContainer/Settings Page".visible = false

func _on_Low_Processor_CheckButton_toggled(button_pressed):
	if(button_pressed):
		OS.low_processor_usage_mode = true
		emit_signal("LowProcessorMode")
		print("Low Processor Mode Is On")
		var LowProcessor_Mode = true
	else:
		OS.low_processor_usage_mode = false
		print("Low Processor Mode Is Off")
		var LowProcessor_Mode = false
