extends StaticBody2D

func _ready() -> void:
	var delay = randf_range(0, 2.5)
	await get_tree().create_timer(delay).timeout
	$AnimationPlayer.play("push")
	$AnimationPlayer.animation_finished.connect(_on_animation_finished)

func _on_animation_finished(anim_name):
	if anim_name == "push":
		$AnimationPlayer.play("push")
