extends Area2D


@onready var kill_timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var animated_sprite = body.get_node("AnimatedSprite2D")
		animated_sprite.play("death")
		
		kill_timer.start()
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
