extends Spatial

onready var LowProcessor_Mode = ("/root/LowProcessor")
onready var ScreenTransition = $AnimationPlayer
onready var timer_length = 0.4

func _on_Level1_ready():
	yield(get_tree().create_timer(timer_length), "timeout")
	ScreenTransition.play_backwards("interfaceHide")
	get_tree().queue_delete(Timer)
	yield(get_tree().create_timer(timer_length), "timeout")
	$ColorRect.visible = false
	get_tree().queue_delete(Timer)
	
	if LowProcessor_Mode:
		OS.low_processor_usage_mode = true
		print("Low Processor Is On For Level 1")
	if not LowProcessor_Mode:
		OS.low_processor_usage_mode = false
		print("Low Processor Is Off For Level 1")

func _on_Goal_body_entered(body: Node) -> void:
	if body is Player:
		get_tree().change_scene("res://interface/FinalMenu.tscn")
