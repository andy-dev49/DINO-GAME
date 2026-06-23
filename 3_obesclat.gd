extends Area2D
var speed :int = 400
#move stumb
func _process(delta: float) -> void:
	if get_parent().game_started == true:
		position.x -=speed*delta
#Collision func
func _on_body_entered(body: CharacterBody2D) -> void:
	if get_parent().game_started == true:
		get_parent().game_started = false
		get_parent().game_over = true
