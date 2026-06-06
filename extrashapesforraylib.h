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