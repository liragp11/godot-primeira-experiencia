extends Node

@export var template_objects: Array[PackedScene]

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				spawn_object(event.position)
				
func spawn_object(click_position: Vector2):
	#rand - função que retorna um valor aleatório, pode ser definido um range ou não
	#randi - o "i" significa que é um retorno de valor INTEIRO
	var index: int = randi_range(0, template_objects.size() - 1)
	var template_object = template_objects[index]
	var object: RigidBody2D = template_object.instantiate()
	object.position = click_position
	add_child(object)
