class Ball {
  float x;
  float y;
  float speed;
  float w;

  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }
  void display() {
    stroke(0);
    fill(255,0,0);
    ellipse(x, y, w, w);
  }
  void move() {
    y = y + speed;
    speed = speed + grav;
    
    if (y > height) {
      speed = speed * -0.95;
    }
  }
}
