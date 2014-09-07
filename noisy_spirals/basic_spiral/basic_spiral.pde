// Drawing a basic spiral with trigonometry

color[] lms4 = {#939BB3, #FFDBD2, #ECF0FF, #BCCCA8, #A9B39C};
color[] palette = lms4;

void setup() {
	size(500, 500);
	stroke(palette[1]);
	strokeWeight(2);
	smooth();
}

void draw() {  
	background(palette[0]);
	Spiral spiral = new Spiral(250, 250, 1440, 10, 0.5);
	spiral.Draw();
}
