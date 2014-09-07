public class Spiral {
	
	private int _centerX;
	private int _centerY;
	private float _spiralAngleLength;
	private float _initialRadius;
	private float _radiusIncrement;

	Spiral(int centerX, int centerY, float spiralAngleLength, float initialRadius, float radiusIncrement) {
		_centerX = centerX;
		_centerY = centerY;
		_spiralAngleLength = spiralAngleLength;
		_initialRadius = initialRadius;
		_radiusIncrement = radiusIncrement;
	}

	public void Draw() {
		float radius = _initialRadius;
		float x, y;
		float lastX = -999;
		float lastY = -999;
		for (float angle = 0; angle <= _spiralAngleLength; angle += 5) {
			radius += _radiusIncrement;
			float rad = radians(angle);
			x = _centerX + (radius * cos(rad));
			y = _centerY + (radius * sin(rad));
			if (lastX > -999) {
				line(x, y, lastX, lastY);
			}
			lastX = x;
			lastY = y;
		}
	}
}