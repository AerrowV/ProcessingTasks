boolean isMoving = false; // Tracks whether the circle should be moving
int circleX = 0;
int circleY = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(100);
  stroke(255);
  fill(0);
  ellipse(circleX, circleY, 50, 50);
  if (isMoving) {
    circleX++;
    if (circleX > width) {
      circleX = 0; // Reset circleX to start from the left again
    }
  }
}

void mousePressed() {
  isMoving = true; // Enable movement when the mouse is pressed
}
