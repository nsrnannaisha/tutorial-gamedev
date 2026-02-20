extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		get_parent().get_node("WinText").visible = true
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://scenes/Level2.tscn")
	elif (body.name == "GreenShip"):
		print("Reached objective 2!")
		get_parent().get_node("WinText2").visible = true
		await get_tree().create_timer(1.0).timeout
