Snake s0;
Snake s1;

void setup() {
  size(400,200);
  // Initialize
  s0 = new Snake(50);
  s1 = new Snake(25);
}

void draw() {
  background(255);
  
  // Update and display
  s0.update(mouseX-30,mouseY);
  s0.display();

  // Update and display
  s1.update(mouseX+30,mouseY);
  s1.display();  
}
