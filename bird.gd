extends Area2D
#bird move func
func _process(delta: float) -> void:
	if get_parent().game_started == true:
		position.x -= get_parent().game_speed *delta
		$AnimatedSprite2D.play("run")
	if get_parent().game_started == false:
		$AnimatedSprite2D.stop()
#Collision func
func _on_body_entered(body: CharacterBody2D) -> void:
		#invincible timer
	if body.Invincible == true:
		return
	else:
		body.Invincible = true
		body.get_node("InvincibleTimer").start()
		body.get_hit = true
	if body.get_hit == true:
		body.get_node("AnimatedSprite2D").play("damage")
	# take 1 live away
	if get_parent().game_started == true:
		get_parent().lives -= 1
		get_parent().camera.screen_shake(15.0, 0.5)
		
	# if lives reach 0, game over
	if get_parent().lives == 0:
		get_parent().game_started = false
		get_parent().game_over = true
