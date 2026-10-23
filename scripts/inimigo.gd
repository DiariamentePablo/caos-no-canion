extends CharacterBody2D

@export var velocidade: float = 40.0
@export var vida: int = 1
@export var grupo_alvo: String = "player"

func _physics_process(delta: float) -> void:
	var jogador := get_tree().get_first_node_in_group(grupo_alvo) as Node2D
	if jogador == null:
		return
	
	velocity = global_position.direction_to(jogador.global_position) * velocidade
	move_and_slide()

func levar_golpe() -> void:
	vida -= 1
	if vida <= 0:
		queue_free()
