extends Control

onready var ScreenTransition = $AnimationPlayer
var timer_length = 0.4

func _on_Return_to_Main_Menu_pressed() -> void:
	get_tree().change_scene("interface/GameMenu.tscn")

func _on_Level_1_pressed() -> void:
	$ColorRect.visible = true
	ScreenTransition.play("interfaceHide")
	yield(get_tree().create_timer(timer_length), "timeout")
	load("res://Scenes/world/Level1.tscn")
	yield(get_tree().create_timer(timer_length), "timeout")
	get_tree().change_scene("res://Scenes/world/Level1.tscn")

func _on_Level_2_pressed() -> void:
	$ColorRect.visible = true
	ScreenTransition.play("interfaceHide")
	yield(get_tree().create_timer(timer_length), "timeout")
	load("res://Scenes/level_2/Level_2.tscn")
	yield(get_tree().create_timer(timer_length), "timeout")
	get_tree().change_scene("res://Scenes/level_2/Level_2.tscn")

func _on_Level_3_pressed() -> void:
	$ColorRect.visible = true
	ScreenTransition.play("interfaceHide")
	yield(get_tree().create_timer(timer_length), "timeout")
	load("res://Scenes/level_3/Level_3.tscn")
	yield(get_tree().create_timer(timer_length), "timeout")
	get_tree().change_scene("res://Scenes/level_3/Level_3.tscn")

func _on_Exit_Game_pressed() -> void:
	$ColorRect.visible = true
	ScreenTransition.play("interfaceHide")
	yield(get_tree().create_timer(timer_length), "timeout")
	get_tree().quit()

func _on_Level_4_pressed():
	$ColorRect.visible = true
	ScreenTransition.play("interfaceHide")
	yield(get_tree().create_timer(timer_length), "timeout")
	load("res://Scenes/level_4/level_4.tscn")
	yield(get_tree().create_timer(timer_length), "timeout")
	get_tree().change_scene("res://Scenes/level_4/level_4.tscn")
