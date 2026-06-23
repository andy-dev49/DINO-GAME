extends StaticBody2D
#ground move func
func _process(delta: float) -> void:
	if get_parent().game_started == true:
		position.x -=get_parent().game_speed*delta
		if position.x < -2304:
			position.x +=2304
		
