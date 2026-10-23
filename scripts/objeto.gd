extends Area2D

var toques := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(inimigo: Node2D) -> void:
	inimigo.queue_free()
	toques += 1
	if toques >= 5:
		get_tree().current_scene.perder()
