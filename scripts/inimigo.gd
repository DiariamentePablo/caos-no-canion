extends CharacterBody2D

@export var velocidade: float = 40.0
@export var vida: int = 1
@export var grupo_alvo: String = "player"

@onready var agente: NavigationAgent2D = $NavigationAgent2D

func _physics_process(delta: float) -> void:
	var alvo := get_tree().get_first_node_in_group(grupo_alvo) as Node2D
	if alvo == null:
		return
	
	# O agente calcula o caminho; o inimigo só anda até o próximo ponto dele.
	agente.target_position = alvo.global_position
	var proximo := agente.get_next_path_position()
	velocity = global_position.direction_to(proximo) * velocidade
	move_and_slide()

func levar_golpe() -> void:
	vida -= 1
	if vida <= 0:
		queue_free()
