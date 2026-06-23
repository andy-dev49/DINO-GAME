extends RichTextLabel
#get lives num from main
func _process(delta: float) -> void:
	self.bbcode_text = "[img=3*3]res://assets/vecteezy_a-retro-styled-pixel-art-illustration-of-a-mini-red-heart-icon_49079854.png[/img]"+str(get_parent().lives)
