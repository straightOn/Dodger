extends Node2D

func _on_despawner_body_entered(body):
	if body.has_method('despawn'):
		body.despawn()
