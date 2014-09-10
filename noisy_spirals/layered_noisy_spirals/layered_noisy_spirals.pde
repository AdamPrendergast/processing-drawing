// Layered noisy spirals

import nanthelygan.processing.*;

color[] lms4 = {#939BB3, #FFDBD2, #ECF0FF, #BCCCA8, #A9B39C};
color[] palette = lms4;
DrawingFactory drawingFactory;

void setup() {
	size(800, 800);
	stroke(palette[3]);
	strokeWeight(0.5);
	smooth();
	drawingFactory = new DrawingFactory(this);
	noLoop();
}

void draw() {  
	background(palette[0]);
	for (int i = 0; i < 200; ++i) {
		randomiseStroke();
		drawSpiral();
	}
}

void randomiseStroke() {
	stroke(palette[int(random(1, 5))], 80);
}

void drawSpiral() {
	SpiralSettings settings = new SpiralSettings();
	settings.CenterX = 400;
	settings.CenterY = 400;
	settings.StartAngle = int(random(360));
	settings.EndAngle = int(random(1440));
	settings.AngleStep = 5 + int(random(3));
	settings.InitialRadius = 10;
	settings.RadiusIncrement = 1;
	settings.EnableNoise = true;
	Spiral spiral = drawingFactory.Spiral(settings);
	spiral.Draw();
}