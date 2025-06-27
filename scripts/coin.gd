extends Area2D

@onready var game_manager: Node = %Game_Manager
@onready var sound_coin: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _on_body_entered(body: Node2D) -> void:
	game_manager.increment_score()
	sound_coin.play()
	animated_sprite_2d.visible = false
	collision_shape_2d.call_deferred("set", "disabled", true)


func _on_audio_stream_player_2d_finished() -> void:
	queue_free() 
