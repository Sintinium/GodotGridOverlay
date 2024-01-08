extends Sprite2D


func _ready() -> void:
	get_tree().root.size_changed.connect(_on_window_resize)
	_on_window_resize()

func _on_window_resize():
	region_rect.size = Vector2(get_tree().root.size)
