//extra raylib shapes

#include <raylib.h>

void DrawCircleHollow(int centerX, int centerY, float radius, float border, Color color, Color backgroundcolor){
	DrawCircle(centerX, centerY, radius, color);
	DrawCircle(centerX, centerY, radius - border, backgroundcolor);

}

void DrawRectangleHollow(int posX, int posY, int width, int height, float border, Color color, Color backgroundcolor){
	DrawRectangle(posX, posY, width, height, color);
	DrawRectangle(posX + border, posY + border, width - border*2, height - border*2, backgroundcolor ); //100 + border, 100 + border, 200 - border*2, 150 - border*2, RAYWHITE

}

void DrawTriangleHollow(Vector2 v1, Vector2 v2, Vector2 v3, float border, Color color, Color backgroundcolor){
	
    float borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables = border /100;

    Vector2 center = {
        (v1.x + v2.x + v3.x) / 3,
        (v1.y + v2.y + v3.y) / 3
    };



	DrawTriangle(v1, v2, v3, color); 
    DrawTriangle(
    (Vector2){ center.x + (v1.x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
               center.y + (v1.y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables },

    (Vector2){ center.x + (v2.x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
               center.y + (v2.y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables },

    (Vector2){ center.x + (v3.x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
               center.y + (v3.y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables },

    backgroundcolor
	);
}

void DrawCircleVHollow(Vector2 center, float radius, float border, Color color, Color backgroundcolor){
	DrawCircleV(center, radius, color);
	DrawCircleV(center, radius - border, backgroundcolor);
}

void DrawCircleGradientHollow(Vector2 center, float radius, float border, Color inner, Color outer, Color backgroundcolor){
	DrawCircleGradient(center, radius, inner, outer);
	DrawCircleV(center, radius - border, backgroundcolor);
}

void DrawCircleSectorHollow(Vector2 center, float radius, float startAngle, float endAngle, int segments, float border, Color color, Color backgroundcolor){
	DrawCircleSector(center, radius, startAngle, endAngle, segments, color);
	DrawCircleSector(center, radius - border, startAngle, endAngle, segments, backgroundcolor);
}

void DrawCircleSectorLinesHollow(Vector2 center, float radius, float startAngle, float endAngle, int segments, float border, Color color, Color backgroundcolor){
	DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color);
	DrawCircleSectorLines(center, radius - border, startAngle, endAngle, segments, backgroundcolor);
}

void DrawCircleLinesHollow(int centerX, int centerY, float radius, float border, Color color, Color backgroundcolor){
	DrawCircleLines(centerX, centerY, radius, color);
	DrawCircleLines(centerX, centerY, radius - border, backgroundcolor);
}

void DrawCircleLinesVHollow(Vector2 center, float radius, float border, Color color, Color backgroundcolor){
	DrawCircleLinesV(center, radius, color);
	DrawCircleLinesV(center, radius - border, backgroundcolor);
}

void DrawEllipseHollow(int centerX, int centerY, float radiusH, float radiusV, float border, Color color, Color backgroundcolor){
	DrawEllipse(centerX, centerY, radiusH, radiusV, color);
	DrawEllipse(centerX, centerY, radiusH - border, radiusV - border, backgroundcolor);
}

void DrawEllipseVHollow(Vector2 center, float radiusH, float radiusV, float border, Color color, Color backgroundcolor){
	DrawEllipseV(center, radiusH, radiusV, color);
	DrawEllipseV(center, radiusH - border, radiusV - border, backgroundcolor);
}

void DrawEllipseLinesHollow(int centerX, int centerY, float radiusH, float radiusV, float border, Color color, Color backgroundcolor){
	DrawEllipseLines(centerX, centerY, radiusH, radiusV, color);
	DrawEllipseLines(centerX, centerY, radiusH - border, radiusV - border, backgroundcolor);
}

void DrawEllipseLinesVHollow(Vector2 center, float radiusH, float radiusV, float border, Color color, Color backgroundcolor){
	DrawEllipseLinesV(center, radiusH, radiusV, color);
	DrawEllipseLinesV(center, radiusH - border, radiusV - border, backgroundcolor);
}

void DrawRingHollow(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, float border, Color color, Color backgroundcolor){
	DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color);
	DrawRing(center, innerRadius + border, outerRadius - border, startAngle, endAngle, segments, backgroundcolor);
}

void DrawRingLinesHollow(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, float border, Color color, Color backgroundcolor){
	DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments, color);
	DrawRingLines(center, innerRadius + border, outerRadius - border, startAngle, endAngle, segments, backgroundcolor);
}

void DrawRectangleVHollow(Vector2 position, Vector2 size, float border, Color color, Color backgroundcolor){
	DrawRectangleV(position, size, color);
	DrawRectangleV(
		(Vector2){ position.x + border, position.y + border },
		(Vector2){ size.x - border*2, size.y - border*2 },
		backgroundcolor
	);
}

void DrawRectangleRecHollow(Rectangle rec, float border, Color color, Color backgroundcolor){
	DrawRectangleRec(rec, color);
	DrawRectangleRec(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		backgroundcolor
	);
}

void DrawRectangleProHollow(Rectangle rec, Vector2 origin, float rotation, float border, Color color, Color backgroundcolor){
	DrawRectanglePro(rec, origin, rotation, color);
	DrawRectanglePro(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		(Vector2){ origin.x - border, origin.y - border },
		rotation,
		backgroundcolor
	);
}

void DrawRectangleGradientVHollow(int posX, int posY, int width, int height, float border, Color top, Color bottom, Color backgroundcolor){
	DrawRectangleGradientV(posX, posY, width, height, top, bottom);
	DrawRectangleRec(
		(Rectangle){ posX + border, posY + border, width - border*2, height - border*2 },
		backgroundcolor
	);
}

void DrawRectangleGradientHHollow(int posX, int posY, int width, int height, float border, Color left, Color right, Color backgroundcolor){
	DrawRectangleGradientH(posX, posY, width, height, left, right);
	DrawRectangleRec(
		(Rectangle){ posX + border, posY + border, width - border*2, height - border*2 },
		backgroundcolor
	);
}

void DrawRectangleGradientExHollow(Rectangle rec, float border, Color topLeft, Color bottomLeft, Color bottomRight, Color topRight, Color backgroundcolor){
	DrawRectangleGradientEx(rec, topLeft, bottomLeft, bottomRight, topRight);
	DrawRectangleRec(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		backgroundcolor
	);
}

void DrawRectangleLinesHollow(int posX, int posY, int width, int height, float border, Color color, Color backgroundcolor){
	DrawRectangleLines(posX, posY, width, height, color);
	DrawRectangleLines(
		(int)(posX + border),
		(int)(posY + border),
		(int)(width - border*2),
		(int)(height - border*2),
		backgroundcolor
	);
}

void DrawRectangleLinesExHollow(Rectangle rec, float lineThick, float border, Color color, Color backgroundcolor){
	DrawRectangleLinesEx(rec, lineThick, color);
	DrawRectangleLinesEx(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		lineThick,
		backgroundcolor
	);
}

void DrawRectangleRoundedHollow(Rectangle rec, float roundness, int segments, float border, Color color, Color backgroundcolor){
	DrawRectangleRounded(rec, roundness, segments, color);
	DrawRectangleRounded(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		roundness,
		segments,
		backgroundcolor
	);
}

void DrawRectangleRoundedLinesHollow(Rectangle rec, float roundness, int segments, float border, Color color, Color backgroundcolor){
	DrawRectangleRoundedLines(rec, roundness, segments, color);
	DrawRectangleRoundedLines(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		roundness,
		segments,
		backgroundcolor
	);
}

void DrawRectangleRoundedLinesExHollow(Rectangle rec, float roundness, int segments, float lineThick, float border, Color color, Color backgroundcolor){
	DrawRectangleRoundedLinesEx(rec, roundness, segments, lineThick, color);
	DrawRectangleRoundedLinesEx(
		(Rectangle){ rec.x + border, rec.y + border, rec.width - border*2, rec.height - border*2 },
		roundness,
		segments,
		lineThick,
		backgroundcolor
	);
}

void DrawTriangleLinesHollow(Vector2 v1, Vector2 v2, Vector2 v3, float border, Color color, Color backgroundcolor){
	float borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables = border /100;

	Vector2 center = {
		(v1.x + v2.x + v3.x) / 3,
		(v1.y + v2.y + v3.y) / 3
	};

	DrawTriangleLines(v1, v2, v3, color);
	DrawTriangleLines(
		(Vector2){ center.x + (v1.x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
				   center.y + (v1.y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables },
		(Vector2){ center.x + (v2.x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
				   center.y + (v2.y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables },
		(Vector2){ center.x + (v3.x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
				   center.y + (v3.y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables },
		backgroundcolor
	);
}

void DrawTriangleFanHollow(const Vector2 *points, int pointCount, float border, Color color, Color backgroundcolor){
	if (pointCount < 3) return;

	float borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables = border /100;
	Vector2 center = points[0];
	Vector2 innerPoints[pointCount];

	for (int i = 0; i < pointCount; i++){
		innerPoints[i] = (Vector2){
			center.x + (points[i].x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
			center.y + (points[i].y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables
		};
	}

	DrawTriangleFan(points, pointCount, color);
	DrawTriangleFan(innerPoints, pointCount, backgroundcolor);
}

void DrawTriangleStripHollow(const Vector2 *points, int pointCount, float border, Color color, Color backgroundcolor){
	if (pointCount < 3) return;

	float borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables = border /100;
	Vector2 center = { 0, 0 };
	Vector2 innerPoints[pointCount];

	for (int i = 0; i < pointCount; i++){
		center.x += points[i].x;
		center.y += points[i].y;
	}
	center.x /= pointCount;
	center.y /= pointCount;

	for (int i = 0; i < pointCount; i++){
		innerPoints[i] = (Vector2){
			center.x + (points[i].x - center.x) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables,
			center.y + (points[i].y - center.y) * borderforsakeofgodandallthatisgreatihatethislanguageasicannotasignvariables
		};
	}

	DrawTriangleStrip(points, pointCount, color);
	DrawTriangleStrip(innerPoints, pointCount, backgroundcolor);
}

void DrawPolyHollow(Vector2 center, int sides, float radius, float rotation, float border, Color color, Color backgroundcolor){
	DrawPoly(center, sides, radius, rotation, color);
	DrawPoly(center, sides, radius - border, rotation, backgroundcolor);
}

void DrawPolyLinesHollow(Vector2 center, int sides, float radius, float rotation, float border, Color color, Color backgroundcolor){
	DrawPolyLines(center, sides, radius, rotation, color);
	DrawPolyLines(center, sides, radius - border, rotation, backgroundcolor);
}

void DrawPolyLinesExHollow(Vector2 center, int sides, float radius, float rotation, float lineThick, float border, Color color, Color backgroundcolor){
	DrawPolyLinesEx(center, sides, radius, rotation, lineThick, color);
	DrawPolyLinesEx(center, sides, radius - border, rotation, lineThick, backgroundcolor);
}