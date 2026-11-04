const std = @import("std");
const rl = @cImport({
    @cInclude("raylib.h");
});

pub const Vector2 = rl.Vector2;
pub const Color = rl.Color;
pub const Rectangle = rl.Rectangle;

pub fn draw_circle_hollow(center_x: c_int, center_y: c_int, radius: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawCircle(center_x, center_y, radius, color);
    rl.DrawCircle(center_x, center_y, radius - border, background_color);
}

pub fn draw_circle_v_hollow(center: Vector2, radius: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawCircleV(center, radius, color);
    rl.DrawCircleV(center, radius - border, background_color);
}

pub fn draw_circle_gradient_hollow(center: Vector2, radius: f32, border: f32, inner: Color, outer: Color, background_color: Color) void {
    rl.DrawCircleGradient(center, radius, inner, outer);
    rl.DrawCircleV(center, radius - border, background_color);
}

pub fn draw_circle_sector_hollow(center: Vector2, radius: f32, start_angle: f32, end_angle: f32, segments: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawCircleSector(center, radius, start_angle, end_angle, segments, color);
    rl.DrawCircleSector(center, radius - border, start_angle, end_angle, segments, background_color);
}

pub fn draw_circle_sector_lines_hollow(center: Vector2, radius: f32, start_angle: f32, end_angle: f32, segments: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawCircleSectorLines(center, radius, start_angle, end_angle, segments, color);
    rl.DrawCircleSectorLines(center, radius - border, start_angle, end_angle, segments, background_color);
}

pub fn draw_circle_lines_hollow(center_x: c_int, center_y: c_int, radius: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawCircleLines(center_x, center_y, radius, color);
    rl.DrawCircleLines(center_x, center_y, radius - border, background_color);
}

pub fn draw_circle_lines_v_hollow(center: Vector2, radius: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawCircleLinesV(center, radius, color);
    rl.DrawCircleLinesV(center, radius - border, background_color);
}

pub fn draw_ellipse_hollow(center_x: c_int, center_y: c_int, radius_h: f32, radius_v: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawEllipse(center_x, center_y, radius_h, radius_v, color);
    rl.DrawEllipse(center_x, center_y, radius_h - border, radius_v - border, background_color);
}

pub fn draw_ellipse_v_hollow(center: Vector2, radius_h: f32, radius_v: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawEllipseV(center, radius_h, radius_v, color);
    rl.DrawEllipseV(center, radius_h - border, radius_v - border, background_color);
}

pub fn draw_ellipse_lines_hollow(center_x: c_int, center_y: c_int, radius_h: f32, radius_v: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawEllipseLines(center_x, center_y, radius_h, radius_v, color);
    rl.DrawEllipseLines(center_x, center_y, radius_h - border, radius_v - border, background_color);
}

pub fn draw_ellipse_lines_v_hollow(center: Vector2, radius_h: f32, radius_v: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawEllipseLinesV(center, radius_h, radius_v, color);
    rl.DrawEllipseLinesV(center, radius_h - border, radius_v - border, background_color);
}

pub fn draw_ring_hollow(center: Vector2, inner_radius: f32, outer_radius: f32, start_angle: f32, end_angle: f32, segments: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawRing(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
    rl.DrawRing(center, inner_radius + border, outer_radius - border, start_angle, end_angle, segments, background_color);
}

pub fn draw_ring_lines_hollow(center: Vector2, inner_radius: f32, outer_radius: f32, start_angle: f32, end_angle: f32, segments: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawRingLines(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
    rl.DrawRingLines(center, inner_radius + border, outer_radius - border, start_angle, end_angle, segments, background_color);
}

pub fn draw_rectangle_hollow(pos_x: c_int, pos_y: c_int, width: c_int, height: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangle(pos_x, pos_y, width, height, color);
    rl.DrawRectangle(
        @intFromFloat(@as(f32, @floatFromInt(pos_x)) + border),
        @intFromFloat(@as(f32, @floatFromInt(pos_y)) + border),
        @intFromFloat(@as(f32, @floatFromInt(width)) - border * 2),
        @intFromFloat(@as(f32, @floatFromInt(height)) - border * 2),
        background_color,
    );
}

pub fn draw_rectangle_v_hollow(position: Vector2, size: Vector2, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleV(position, size, color);
    rl.DrawRectangleV(
        .{ .x = position.x + border, .y = position.y + border },
        .{ .x = size.x - border * 2, .y = size.y - border * 2 },
        background_color,
    );
}

pub fn draw_rectangle_rec_hollow(rec: Rectangle, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleRec(rec, color);
    rl.DrawRectangleRec(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        background_color,
    );
}

pub fn draw_rectangle_pro_hollow(rec: Rectangle, origin: Vector2, rotation: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectanglePro(rec, origin, rotation, color);
    rl.DrawRectanglePro(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        .{ .x = origin.x - border, .y = origin.y - border },
        rotation,
        background_color,
    );
}

pub fn draw_rectangle_gradient_v_hollow(pos_x: c_int, pos_y: c_int, width: c_int, height: c_int, border: f32, top: Color, bottom: Color, background_color: Color) void {
    rl.DrawRectangleGradientV(pos_x, pos_y, width, height, top, bottom);
    rl.DrawRectangleRec(
        .{
            .x = @as(f32, @floatFromInt(pos_x)) + border,
            .y = @as(f32, @floatFromInt(pos_y)) + border,
            .width = @as(f32, @floatFromInt(width)) - border * 2,
            .height = @as(f32, @floatFromInt(height)) - border * 2,
        },
        background_color,
    );
}

pub fn draw_rectangle_gradient_h_hollow(pos_x: c_int, pos_y: c_int, width: c_int, height: c_int, border: f32, left: Color, right: Color, background_color: Color) void {
    rl.DrawRectangleGradientH(pos_x, pos_y, width, height, left, right);
    rl.DrawRectangleRec(
        .{
            .x = @as(f32, @floatFromInt(pos_x)) + border,
            .y = @as(f32, @floatFromInt(pos_y)) + border,
            .width = @as(f32, @floatFromInt(width)) - border * 2,
            .height = @as(f32, @floatFromInt(height)) - border * 2,
        },
        background_color,
    );
}

pub fn draw_rectangle_gradient_ex_hollow(rec: Rectangle, border: f32, top_left: Color, bottom_left: Color, bottom_right: Color, top_right: Color, background_color: Color) void {
    rl.DrawRectangleGradientEx(rec, top_left, bottom_left, bottom_right, top_right);
    rl.DrawRectangleRec(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        background_color,
    );
}

pub fn draw_rectangle_lines_hollow(pos_x: c_int, pos_y: c_int, width: c_int, height: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleLines(pos_x, pos_y, width, height, color);
    rl.DrawRectangleLines(
        @intFromFloat(@as(f32, @floatFromInt(pos_x)) + border),
        @intFromFloat(@as(f32, @floatFromInt(pos_y)) + border),
        @intFromFloat(@as(f32, @floatFromInt(width)) - border * 2),
        @intFromFloat(@as(f32, @floatFromInt(height)) - border * 2),
        background_color,
    );
}

pub fn draw_rectangle_lines_ex_hollow(rec: Rectangle, line_thick: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleLinesEx(rec, line_thick, color);
    rl.DrawRectangleLinesEx(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        line_thick,
        background_color,
    );
}

pub fn draw_rectangle_rounded_hollow(rec: Rectangle, roundness: f32, segments: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleRounded(rec, roundness, segments, color);
    rl.DrawRectangleRounded(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        roundness,
        segments,
        background_color,
    );
}

pub fn draw_rectangle_rounded_lines_hollow(rec: Rectangle, roundness: f32, segments: c_int, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleRoundedLines(rec, roundness, segments, color);
    rl.DrawRectangleRoundedLines(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        roundness,
        segments,
        background_color,
    );
}

pub fn draw_rectangle_rounded_lines_ex_hollow(rec: Rectangle, roundness: f32, segments: c_int, line_thick: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawRectangleRoundedLinesEx(rec, roundness, segments, line_thick, color);
    rl.DrawRectangleRoundedLinesEx(
        .{ .x = rec.x + border, .y = rec.y + border, .width = rec.width - border * 2, .height = rec.height - border * 2 },
        roundness,
        segments,
        line_thick,
        background_color,
    );
}

pub fn draw_triangle_hollow(v1: Vector2, v2: Vector2, v3: Vector2, border: f32, color: Color, background_color: Color) void {
    const scale = border / 100.0;
    const center = Vector2{
        .x = (v1.x + v2.x + v3.x) / 3.0,
        .y = (v1.y + v2.y + v3.y) / 3.0,
    };

    rl.DrawTriangle(v1, v2, v3, color);
    rl.DrawTriangle(
        .{ .x = center.x + (v1.x - center.x) * scale, .y = center.y + (v1.y - center.y) * scale },
        .{ .x = center.x + (v2.x - center.x) * scale, .y = center.y + (v2.y - center.y) * scale },
        .{ .x = center.x + (v3.x - center.x) * scale, .y = center.y + (v3.y - center.y) * scale },
        background_color,
    );
}

pub fn draw_triangle_lines_hollow(v1: Vector2, v2: Vector2, v3: Vector2, border: f32, color: Color, background_color: Color) void {
    const scale = border / 100.0;
    const center = Vector2{
        .x = (v1.x + v2.x + v3.x) / 3.0,
        .y = (v1.y + v2.y + v3.y) / 3.0,
    };

    rl.DrawTriangleLines(v1, v2, v3, color);
    rl.DrawTriangleLines(
        .{ .x = center.x + (v1.x - center.x) * scale, .y = center.y + (v1.y - center.y) * scale },
        .{ .x = center.x + (v2.x - center.x) * scale, .y = center.y + (v2.y - center.y) * scale },
        .{ .x = center.x + (v3.x - center.x) * scale, .y = center.y + (v3.y - center.y) * scale },
        background_color,
    );
}

pub fn draw_triangle_fan_hollow(points: []const Vector2, border: f32, color: Color, background_color: Color) void {
    if (points.len < 3) return;

    var stack_fallback = std.heap.stackFallback(4096, std.heap.page_allocator);
    const allocator = stack_fallback.get();
    const inner = allocator.alloc(Vector2, points.len) catch return;
    defer allocator.free(inner);

    const scale = border / 100.0;
    const center = points[0];
    for (points, 0..) |point, i| {
        inner[i] = .{
            .x = center.x + (point.x - center.x) * scale,
            .y = center.y + (point.y - center.y) * scale,
        };
    }

    rl.DrawTriangleFan(points.ptr, @intCast(points.len), color);
    rl.DrawTriangleFan(inner.ptr, @intCast(points.len), background_color);
}

pub fn draw_triangle_strip_hollow(points: []const Vector2, border: f32, color: Color, background_color: Color) void {
    if (points.len < 3) return;

    var stack_fallback = std.heap.stackFallback(4096, std.heap.page_allocator);
    const allocator = stack_fallback.get();
    const inner = allocator.alloc(Vector2, points.len) catch return;
    defer allocator.free(inner);

    var center = Vector2{ .x = 0, .y = 0 };
    for (points) |point| {
        center.x += point.x;
        center.y += point.y;
    }
    center.x /= @floatFromInt(points.len);
    center.y /= @floatFromInt(points.len);

    const scale = border / 100.0;
    for (points, 0..) |point, i| {
        inner[i] = .{
            .x = center.x + (point.x - center.x) * scale,
            .y = center.y + (point.y - center.y) * scale,
        };
    }

    rl.DrawTriangleStrip(points.ptr, @intCast(points.len), color);
    rl.DrawTriangleStrip(inner.ptr, @intCast(points.len), background_color);
}

pub fn draw_poly_hollow(center: Vector2, sides: c_int, radius: f32, rotation: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawPoly(center, sides, radius, rotation, color);
    rl.DrawPoly(center, sides, radius - border, rotation, background_color);
}

pub fn draw_poly_lines_hollow(center: Vector2, sides: c_int, radius: f32, rotation: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawPolyLines(center, sides, radius, rotation, color);
    rl.DrawPolyLines(center, sides, radius - border, rotation, background_color);
}

pub fn draw_poly_lines_ex_hollow(center: Vector2, sides: c_int, radius: f32, rotation: f32, line_thick: f32, border: f32, color: Color, background_color: Color) void {
    rl.DrawPolyLinesEx(center, sides, radius, rotation, line_thick, color);
    rl.DrawPolyLinesEx(center, sides, radius - border, rotation, line_thick, background_color);
}
