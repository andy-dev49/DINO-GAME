extends Label
#get score num from main
func _process(delta: float) -> void:
	self.text = "Score:" + str(get_parent().score)
