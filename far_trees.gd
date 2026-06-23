extends Parallax2D
#closs scroll for bg
func _process(delta: float) -> void:
	if get_parent().game_started == false:
		autoscroll = Vector2.ZERO
	if get_parent().game_started == true and get_parent().game_over == false:
		autoscroll = Vector2(-get_parent().game_speed* 0.05 , 0)
