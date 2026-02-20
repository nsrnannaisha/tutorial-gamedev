extends Area2D

func _on_body_entered(body):
	if body.name == "GreenShip":
		print("The ship fell!")
		get_parent().get_node("FailText").visible = true
		await get_tree().create_timer(1.0).timeout
		get_tree().reload_current_scene()
