extends Sprite2D

var half_texture_size: Vector2

func _ready() -> void:
	half_texture_size = texture.get_size() / 2
	get_tree().root.size_changed.connect(_on_window_resize)
	_on_window_resize()

func _process(delta: float) -> void:
	region_rect.position = -get_global_mouse_position() + half_texture_size

func _on_texture_changed() -> void:
	half_texture_size = texture.get_size() / 2
	
func _on_window_resize():
	region_rect.size = Vector2(get_tree().root.size)
