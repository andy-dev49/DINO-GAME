extends Label
#get high score num
func _process(delta: float) -> void:
	self.text = "high_score:" + str(get_parent().high_score)
