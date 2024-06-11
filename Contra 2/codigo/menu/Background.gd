extends TextureRect

func _ready():
	set_process(true)

func _process(delta):
	var texture_size = texture.get_size()
	var viewport_size = get_viewport_rect().size
	
	if texture_size != Vector2.ZERO:
		var scale_factor_x = viewport_size.x / texture_size.x
		var scale_factor_y = viewport_size.y / texture_size.y
		var scale_factor = min(scale_factor_x, scale_factor_y)
		set_scale(Vector2(scale_factor, scale_factor))
