// Drawing a circle with trigonometry

color[] crowds = {#678C8B, #8FA89B, #A2BAB0, #D0EDDE, #B3B597};
color[] palette = crowds;

void setup() {
	size(500, 500);
	background(palette[0]);
	stroke(palette[1]);
	strokeWeight(2);
	smooth();
}

void draw() {
	drawCircle(250, 150, 100);
}

void drawCircle(int centerX, int centerY, float radius) {
	float x, y;
	float lastX = -999;
	float lastY = -999;
	for (float angle = 0; angle <= 360; angle += 5) {
		float rad = radians(angle);
		x = centerX + (radius * cos(rad));
		y = centerY + (radius * sin(rad));
		point(x, y);
	}
}