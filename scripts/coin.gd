extends Area2D

@onready var game_manager: Node = %Game_Manager

func _on_body_entered(body: Node2D) -> void:
	game_manager.increment_score()
	queue_free()
