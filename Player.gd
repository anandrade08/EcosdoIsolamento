extends CharacterBody2D

#Velocidade do personagem (geral)
var speed = 2000



#Para o personagem se mover para frente ou para trás
func _physics_process(delta):
	var direction = 0

	if Input.is_action_pressed("ui_right"):  # geralmente 'D'
		direction += 1
	if Input.is_action_pressed("ui_left"):   # geralmente 'A'
		direction -= 1

	velocity.x = direction * speed
	velocity.y = 0

	move_and_slide()
		
#Para a camera ficar no personagem
