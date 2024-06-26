extends PlayerCharacter

var double_jump = true


func can_jump() -> bool:
	if !Input.is_action_just_pressed("ui_up"):
		pass
	elif is_on_floor():
		double_jump = true
		return true
	elif double_jump:
		double_jump = false
		return true
	return false


func _physics_process(delta):
	super._physics_process(delta)


func on_targeted():
	GoConductor.get_stage_pointer("music").CurrentlyPlaying.CueInName("attacked")


func on_targeted_stopped():
	GoConductor.get_stage_pointer("music").CurrentlyPlaying.CueOutName("attacked")