Car myCar;
void setup() {
  size(200, 200);
  // Initialize Car object
  myCar = new Car();
}
void draw() {
  background(0);
  // Operate Car object.
  myCar.move();
  myCar.display();
}
