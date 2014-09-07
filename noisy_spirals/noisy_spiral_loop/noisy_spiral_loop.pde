// Drawing a basic spiral with Willowbrook Processing library

import willowbrook.processing.*;

color[] lms4 = {#939BB3, #FFDBD2, #ECF0FF, #BCCCA8, #A9B39C};
color[] palette = lms4;
DrawingFactory drawingFactory;

void setup() {
	size(500, 500);
	stroke(palette[3]);
	strokeWeight(1);
	smooth();
	drawingFactory = new DrawingFactory(this);
}

void draw() {  
	background(palette[0]);

	Spiral spiral = drawingFactory.Spiral(250, 250, 1440, 10, 0.5);
	spiral.EnableNoise();
	spiral.Draw();
}
