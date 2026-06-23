extends Node
@export var obesctal_scenes : Array[PackedScene] = []
var game_started :bool = false
var game_over :bool = false
var score :int = 0
var high_score :int = 0
var save_file = "user://save_file.save"
var lives :int = 3
@onready var camera = $Camera2D
var game_speed :int = 400
#read func
func save_score():
	var file = FileAccess.open(save_file,FileAccess.WRITE_READ)
	file.store_32(high_score)
func load_score():
	if FileAccess.file_exists(save_file):
		var data_file = FileAccess.open(save_file,FileAccess.READ)
		if data_file:
			high_score = data_file.get_32()
func _ready() -> void:
	load_score()
#game changed to true
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and game_over == false:
		game_started = true
	if Input.is_action_just_pressed("restart") and game_over == true:
		get_tree().reload_current_scene()
	if game_over == false and lives > 0:
		$RichTextLabel.visible = false
	else:
		$RichTextLabel.visible = true
	if game_started == false:
		$RichTextLabel2.visible = false
	else:
		$RichTextLabel2.visible = true
	if game_over == true:
		save_score()
#obesctal_spawner_func
func _on_timer_timeout() -> void:
	if game_started == true and game_over == false:
		var randi_index = randi() %obesctal_scenes.size()
		var obesctals = obesctal_scenes[randi_index]
		var new_obesctals = obesctals.instantiate()
		new_obesctals.position =$spawner.position
		get_tree().current_scene.add_child(new_obesctals)


func _on_bird_timer_timeout() -> void:
	var bird_obesctals = obesctal_scenes[3]
	var bird = bird_obesctals.instantiate()
	bird.position = $bird_spawner.position
	get_tree().current_scene.add_child(bird)
	
#add 1 score after timer
func _on_score_timer_timeout() -> void:
	if game_started == true and game_over == false:
		score += 1
	if score % 100 == 0 and score != 0:
		game_speed += 50
	if score > high_score:
		high_score = score
