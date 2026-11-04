package extrashapesforraylib

import rl "vendor:raylib"

draw_circle_hollow :: proc(center_x, center_y: i32, radius, border: f32, color, background_color: rl.Color) {
	rl.DrawCircle(center_x, center_y, radius, color)
	rl.DrawCircle(center_x, center_y, radius - border, background_color)
}

draw_circle_v_hollow :: proc(center: rl.Vector2, radius, border: f32, color, background_color: rl.Color) {
	rl.DrawCircleV(center, radius, color)
	rl.DrawCircleV(center, radius - border, background_color)
}

draw_circle_gradient_hollow :: proc(center: rl.Vector2, radius, border: f32, inner, outer: rl.Color, background_color: rl.Color) {
	rl.DrawCircleGradient(center, radius, inner, outer)
	rl.DrawCircleV(center, radius - border, background_color)
}

draw_circle_sector_hollow :: proc(center: rl.Vector2, radius, start_angle, end_angle: f32, segments: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawCircleSector(center, radius, start_angle, end_angle, segments, color)
	rl.DrawCircleSector(center, radius - border, start_angle, end_angle, segments, background_color)
}

draw_circle_sector_lines_hollow :: proc(center: rl.Vector2, radius, start_angle, end_angle: f32, segments: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawCircleSectorLines(center, radius, start_angle, end_angle, segments, color)
	rl.DrawCircleSectorLines(center, radius - border, start_angle, end_angle, segments, background_color)
}

draw_circle_lines_hollow :: proc(center_x, center_y: i32, radius, border: f32, color, background_color: rl.Color) {
	rl.DrawCircleLines(center_x, center_y, radius, color)
	rl.DrawCircleLines(center_x, center_y, radius - border, background_color)
}

draw_circle_lines_v_hollow :: proc(center: rl.Vector2, radius, border: f32, color, background_color: rl.Color) {
	rl.DrawCircleLinesV(center, radius, color)
	rl.DrawCircleLinesV(center, radius - border, background_color)
}

draw_ellipse_hollow :: proc(center_x, center_y: i32, radius_h, radius_v, border: f32, color, background_color: rl.Color) {
	rl.DrawEllipse(center_x, center_y, radius_h, radius_v, color)
	rl.DrawEllipse(center_x, center_y, radius_h - border, radius_v - border, background_color)
}

draw_ellipse_v_hollow :: proc(center: rl.Vector2, radius_h, radius_v, border: f32, color, background_color: rl.Color) {
	rl.DrawEllipseV(center, radius_h, radius_v, color)
	rl.DrawEllipseV(center, radius_h - border, radius_v - border, background_color)
}

draw_ellipse_lines_hollow :: proc(center_x, center_y: i32, radius_h, radius_v, border: f32, color, background_color: rl.Color) {
	rl.DrawEllipseLines(center_x, center_y, radius_h, radius_v, color)
	rl.DrawEllipseLines(center_x, center_y, radius_h - border, radius_v - border, background_color)
}

draw_ellipse_lines_v_hollow :: proc(center: rl.Vector2, radius_h, radius_v, border: f32, color, background_color: rl.Color) {
	rl.DrawEllipseLinesV(center, radius_h, radius_v, color)
	rl.DrawEllipseLinesV(center, radius_h - border, radius_v - border, background_color)
}

draw_ring_hollow :: proc(center: rl.Vector2, inner_radius, outer_radius, start_angle, end_angle: f32, segments: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawRing(center, inner_radius, outer_radius, start_angle, end_angle, segments, color)
	rl.DrawRing(center, inner_radius + border, outer_radius - border, start_angle, end_angle, segments, background_color)
}

draw_ring_lines_hollow :: proc(center: rl.Vector2, inner_radius, outer_radius, start_angle, end_angle: f32, segments: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawRingLines(center, inner_radius, outer_radius, start_angle, end_angle, segments, color)
	rl.DrawRingLines(center, inner_radius + border, outer_radius - border, start_angle, end_angle, segments, background_color)
}

draw_rectangle_hollow :: proc(pos_x, pos_y, width, height: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangle(pos_x, pos_y, width, height, color)
	rl.DrawRectangle(
		i32(f32(pos_x) + border),
		i32(f32(pos_y) + border),
		i32(f32(width) - border * 2),
		i32(f32(height) - border * 2),
		background_color,
	)
}

draw_rectangle_v_hollow :: proc(position, size: rl.Vector2, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleV(position, size, color)
	rl.DrawRectangleV(
		rl.Vector2{position.x + border, position.y + border},
		rl.Vector2{size.x - border * 2, size.y - border * 2},
		background_color,
	)
}

draw_rectangle_rec_hollow :: proc(rec: rl.Rectangle, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleRec(rec, color)
	rl.DrawRectangleRec(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		background_color,
	)
}

draw_rectangle_pro_hollow :: proc(rec: rl.Rectangle, origin: rl.Vector2, rotation, border: f32, color, background_color: rl.Color) {
	rl.DrawRectanglePro(rec, origin, rotation, color)
	rl.DrawRectanglePro(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		rl.Vector2{origin.x - border, origin.y - border},
		rotation,
		background_color,
	)
}

draw_rectangle_gradient_v_hollow :: proc(pos_x, pos_y, width, height: i32, border: f32, top, bottom: rl.Color, background_color: rl.Color) {
	rl.DrawRectangleGradientV(pos_x, pos_y, width, height, top, bottom)
	rl.DrawRectangleRec(
		rl.Rectangle{f32(pos_x) + border, f32(pos_y) + border, f32(width) - border * 2, f32(height) - border * 2},
		background_color,
	)
}

draw_rectangle_gradient_h_hollow :: proc(pos_x, pos_y, width, height: i32, border: f32, left, right: rl.Color, background_color: rl.Color) {
	rl.DrawRectangleGradientH(pos_x, pos_y, width, height, left, right)
	rl.DrawRectangleRec(
		rl.Rectangle{f32(pos_x) + border, f32(pos_y) + border, f32(width) - border * 2, f32(height) - border * 2},
		background_color,
	)
}

draw_rectangle_gradient_ex_hollow :: proc(rec: rl.Rectangle, border: f32, top_left, bottom_left, bottom_right, top_right: rl.Color, background_color: rl.Color) {
	rl.DrawRectangleGradientEx(rec, top_left, bottom_left, bottom_right, top_right)
	rl.DrawRectangleRec(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		background_color,
	)
}

draw_rectangle_lines_hollow :: proc(pos_x, pos_y, width, height: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleLines(pos_x, pos_y, width, height, color)
	rl.DrawRectangleLines(
		i32(f32(pos_x) + border),
		i32(f32(pos_y) + border),
		i32(f32(width) - border * 2),
		i32(f32(height) - border * 2),
		background_color,
	)
}

draw_rectangle_lines_ex_hollow :: proc(rec: rl.Rectangle, line_thick, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleLinesEx(rec, line_thick, color)
	rl.DrawRectangleLinesEx(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		line_thick,
		background_color,
	)
}

draw_rectangle_rounded_hollow :: proc(rec: rl.Rectangle, roundness: f32, segments: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleRounded(rec, roundness, segments, color)
	rl.DrawRectangleRounded(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		roundness,
		segments,
		background_color,
	)
}

draw_rectangle_rounded_lines_hollow :: proc(rec: rl.Rectangle, roundness: f32, segments: i32, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleRoundedLines(rec, roundness, segments, color)
	rl.DrawRectangleRoundedLines(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		roundness,
		segments,
		background_color,
	)
}

draw_rectangle_rounded_lines_ex_hollow :: proc(rec: rl.Rectangle, roundness: f32, segments: i32, line_thick, border: f32, color, background_color: rl.Color) {
	rl.DrawRectangleRoundedLinesEx(rec, roundness, segments, line_thick, color)
	rl.DrawRectangleRoundedLinesEx(
		rl.Rectangle{rec.x + border, rec.y + border, rec.width - border * 2, rec.height - border * 2},
		roundness,
		segments,
		line_thick,
		background_color,
	)
}

draw_triangle_hollow :: proc(v1, v2, v3: rl.Vector2, border: f32, color, background_color: rl.Color) {
	scale := border / 100
	center := rl.Vector2{(v1.x + v2.x + v3.x) / 3, (v1.y + v2.y + v3.y) / 3}

	rl.DrawTriangle(v1, v2, v3, color)
	rl.DrawTriangle(
		rl.Vector2{center.x + (v1.x - center.x) * scale, center.y + (v1.y - center.y) * scale},
		rl.Vector2{center.x + (v2.x - center.x) * scale, center.y + (v2.y - center.y) * scale},
		rl.Vector2{center.x + (v3.x - center.x) * scale, center.y + (v3.y - center.y) * scale},
		background_color,
	)
}

draw_triangle_lines_hollow :: proc(v1, v2, v3: rl.Vector2, border: f32, color, background_color: rl.Color) {
	scale := border / 100
	center := rl.Vector2{(v1.x + v2.x + v3.x) / 3, (v1.y + v2.y + v3.y) / 3}

	rl.DrawTriangleLines(v1, v2, v3, color)
	rl.DrawTriangleLines(
		rl.Vector2{center.x + (v1.x - center.x) * scale, center.y + (v1.y - center.y) * scale},
		rl.Vector2{center.x + (v2.x - center.x) * scale, center.y + (v2.y - center.y) * scale},
		rl.Vector2{center.x + (v3.x - center.x) * scale, center.y + (v3.y - center.y) * scale},
		background_color,
	)
}

draw_triangle_fan_hollow :: proc(points: []rl.Vector2, border: f32, color, background_color: rl.Color) {
	if len(points) < 3 {
		return
	}

	scale := border / 100
	center := points[0]
	inner := make([]rl.Vector2, len(points))
	defer delete(inner)

	for point, i in points {
		inner[i] = rl.Vector2{center.x + (point.x - center.x) * scale, center.y + (point.y - center.y) * scale}
	}

	rl.DrawTriangleFan(raw_data(points), i32(len(points)), color)
	rl.DrawTriangleFan(raw_data(inner), i32(len(points)), background_color)
}

draw_triangle_strip_hollow :: proc(points: []rl.Vector2, border: f32, color, background_color: rl.Color) {
	if len(points) < 3 {
		return
	}

	center := rl.Vector2{0, 0}
	for point in points {
		center.x += point.x
		center.y += point.y
	}
	center.x /= f32(len(points))
	center.y /= f32(len(points))

	scale := border / 100
	inner := make([]rl.Vector2, len(points))
	defer delete(inner)

	for point, i in points {
		inner[i] = rl.Vector2{center.x + (point.x - center.x) * scale, center.y + (point.y - center.y) * scale}
	}

	rl.DrawTriangleStrip(raw_data(points), i32(len(points)), color)
	rl.DrawTriangleStrip(raw_data(inner), i32(len(points)), background_color)
}

draw_poly_hollow :: proc(center: rl.Vector2, sides: i32, radius, rotation, border: f32, color, background_color: rl.Color) {
	rl.DrawPoly(center, sides, radius, rotation, color)
	rl.DrawPoly(center, sides, radius - border, rotation, background_color)
}

draw_poly_lines_hollow :: proc(center: rl.Vector2, sides: i32, radius, rotation, border: f32, color, background_color: rl.Color) {
	rl.DrawPolyLines(center, sides, radius, rotation, color)
	rl.DrawPolyLines(center, sides, radius - border, rotation, background_color)
}

draw_poly_lines_ex_hollow :: proc(center: rl.Vector2, sides: i32, radius, rotation, line_thick, border: f32, color, background_color: rl.Color) {
	rl.DrawPolyLinesEx(center, sides, radius, rotation, line_thick, color)
	rl.DrawPolyLinesEx(center, sides, radius - border, rotation, line_thick, background_color)
}
