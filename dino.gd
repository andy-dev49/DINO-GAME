extends CharacterBody2D

# movement settings
const gravity : int = 2000
const jump_velocity : int = -700
var start_velocity : int = 0

# Invincible
var Invincible : bool = false

# hit animation
var get_hit : bool = false

# physics for jump and gravity
func _physics_process(delta: float) -> void:
	if is_on_floor() and get_parent().game_started == false:
		$AnimatedSprite2D.play("idle")
		
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor() and get_parent().game_over == false:
		velocity.y = jump_velocity
		$AnimatedSprite2D.play("jump")
		$jump_sound.play()
		$"../press_text".visible = false
		$"../game_name".visible = false
		
	if Input.is_action_just_released("ui_accept"):
		velocity.y = velocity.y / 2
		
	move_and_slide()

# animations controller
func _process(delta: float) -> void:
	# if we die
	if get_parent().game_over == true:
		$AnimatedSprite2D.play("dead")
	
	# if game is running
	elif get_parent().game_started == true:
		#(get_hit == true)
		if get_hit == false:
			if Input.is_action_pressed("ui_down") and is_on_floor():
				$AnimatedSprite2D.play("duck")
				$duckcol.disabled = false
				$runcol.disabled = true
			elif is_on_floor():
				if $AnimatedSprite2D.animation != "run":
					$AnimatedSprite2D.play("run")
					$runcol.disabled = false
					$duckcol.disabled = true

# this function runs automatically when any animation finishes
func _on_animated_sprite_2d_animation_finished() -> void:
	# if damage animation finished, go back to run
	if $AnimatedSprite2D.animation == "damage":
		get_hit = false 
		$AnimatedSprite2D.play("run")

#when the invincible time finish
func _on_invincible_timer_timeout() -> void:
	Invincible = false   
	get_hit = false 
