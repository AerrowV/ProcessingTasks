float x = 0; // Start coordinate

void setup() {

size(200,200); // Canvas size
 }
void draw() {
  background(255);
  // Display object
 
  fill(0);
  
  rect(x,100,20,20);
  
  // Increment x
  x = x+1;
 


if (x>100){
  x=100;
}

x = constrain (x,0,100);

 }
