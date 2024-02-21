int height = 200; // Canvas height
int width = 200; // Canvas width
int centerX = 100; // Center X-coordinate
int centerY = 100; // Center Y-coordinate
int squareSize = 150; // Square size
int circleSize = 50; // Circle size

void setup() {
  size(200,200); // Set canvas size
}

void draw() {
  background(0); // Black background
  stroke(255); // Outline color white/line color
  rectMode(CENTER); // Center the square in the frame
  fill(0,255,0); // Square color
  rect(centerX,centerY,squareSize,squareSize); // Green square
  fill(0,0,255); // Circle color
  ellipse(centerX,centerY,circleSize,circleSize); // Circle position and size
}
