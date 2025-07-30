extends Area2D


@onready var gm = %GameManager

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		gm.add_point()
		queue_free()
