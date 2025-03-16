extends Node2D

var tiles: Tiles
var draw_center := false

@onready var canvas := Global.canvas


func _draw() -> void:
	var positions := get_tile_positions()
	var tilemode_opacity := Global.tilemode_opacity

	if Global.mirror_view:
		var position_tmp := Vector2(Global.current_project.size.x, 0)
		var scale_tmp := Vector2(-1, 1)
		draw_set_transform(position_tmp, 0, scale_tmp)

	var modulate_color := Color(
		tilemode_opacity, tilemode_opacity, tilemode_opacity, tilemode_opacity
	)  # premultiply alpha blending is applied
	var current_frame_texture := canvas.currently_visible_frame.get_texture()
	for pos in positions:
		draw_texture(current_frame_texture, pos, modulate_color)

	draw_set_transform(Vector2.ZERO, 0, Vector2.ONE)


func get_tile_positions() -> Array[Vector2i]:
	var defaulted_tiles := tiles
	if defaulted_tiles == null:
		defaulted_tiles = Global.current_project.tiles

	var x_basis := defaulted_tiles.x_basis
	var y_basis := defaulted_tiles.y_basis

	var positions: Array[Vector2i] = []
	for r in range(-2, 3) :
		for c in range(-2, 3) :
			if not draw_center and r == 0 and c == 0:				continue
			positions.append(r * y_basis + c * x_basis)
	return positions
