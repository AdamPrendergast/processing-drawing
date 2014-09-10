// Drawing a basic spiral with Nant Helygan Processing library

import nanthelygan.processing.*;

color[] lms4 = {#939BB3, #FFDBD2, #ECF0FF, #BCCCA8, #A9B39C};
color[] palette = lms4;
DrawingFactory drawingFactory;

void setup() {
	size(500, 500);
	stroke(palette[3]);
	strokeWeight(1);
	smooth();
	drawingFactory = new DrawingFactory(this);
	noLoop();
}

void draw() {  
	background(palette[0]);

	Spiral spiral = drawingFactory.Spiral(spiralSettings());
	spiral.Draw();
}

SpiralSettings spiralSettings() {
	SpiralSettings settings = new SpiralSettings();
	settings.CenterX = 250;
	settings.CenterY = 250;
	settings.StartAngle = 0;
	settings.EndAngle = 1440;
	settings.AngleStep = 5;
	settings.InitialRadius = 10;
	settings.RadiusIncrement = 0.5;
	settings.EnableNoise = true;
	return settings;
}
