// Boolean variable starts as false
boolean going = false;

// Location of circle
int circleX = 0; 
int circleY = 100; 

void setup() { 
  size(200,200); 
} 
void draw() { 
  background(255); 
  
  // Draw the circle
  stroke(0); 
  fill(175); 
  ellipse(circleX,circleY,50,50); 
  
  // Only move the circle when "going" is true
  if (going) {
    circleX = circleX + 1;
  }
} 

// Set going to true when the mouse is pressed!
void mousePressed() { 
  going = true;
} 
