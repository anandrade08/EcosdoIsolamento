extends Area2D

var jogador_na_area = false

func _ready():
	connect("body_entered", _on_body_entered)
	connect("body_exited", _on_body_exited)

func _on_body_entered(body):
	if body.name == "Player":  # Troque pelo nome do seu nó de jogador
		jogador_na_area = true

func _on_body_exited(body):
	if body.name == "Player":
		jogador_na_area = false

func _process(delta): 
	if jogador_na_area and Input.is_action_just_pressed("E"): mudar_de_cena()

func mudar_de_cena():
	get_tree().change_scene_to_file("res://FrenteEscola.tscn")
		 
