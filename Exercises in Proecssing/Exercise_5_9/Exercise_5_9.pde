int x =0;
int y=0;
float speedx = 1;
float speedy = 1;
void setup() {
  size(200, 200);
  smooth();
}
void draw() {
  background(255);
  x += speedx;
  y += speedy;
  if ((x > width)|| (x < 0)) {
    speedx = speedx * -1;
    fill(random(255), random(255), random(255));
  }
  if ((y > height) || (y < 0)) {
    speedy= speedy * -1;
  }

  // Display circle at x location
  stroke(0);
  ellipse(x, y, 32, 32);
}
