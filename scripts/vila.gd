extends Node2D

@export var cena_inimigo: PackedScene
@onready var horda: Timer = $Horda
@onready var relogio: Timer = $Relogio
@onready var alvo:= $Objeto
@onready var jogador:= $Jogador
@onready var texto_vida: Label = $HUD/Vida
@onready var texto_tempo: Label = $HUD/Tempo
@onready var texto_jogador: Label = $HUD/VidaJogador

func _on_horda_timeout() -> void:
	var inimigo := cena_inimigo.instantiate()
	inimigo.global_position = $Nascedouros.get_children().pick_random().global_position
	inimigo.grupo_alvo = "objeto"
	add_child(inimigo)
	
	# A horda aperta: cada inimigo chega um pouco mais cedo que o anterior.
	horda.wait_time = max(0.5, horda.wait_time * 0.95)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	texto_vida.text = "Vida do Alvo: %d" % (alvo.vida - alvo.toques)
	texto_jogador.text = "Vida do Jogador: %d" % jogador.vida
	texto_tempo.text = "Tempo: %d" % ceil(relogio.time_left)

func _on_relogio_timeout() -> void:
	vencer()

# call_deferred: troca de cena só no fim do quadro, quando a física terminou.
func vencer() -> void:
	get_tree().change_scene_to_file.call_deferred("res://scenes/vitoria.tscn")

func perder() -> void:
	get_tree().change_scene_to_file.call_deferred("res://scenes/derrota.tscn")
