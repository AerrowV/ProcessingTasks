void setup() {
  size(400,400);
}


void draw() {
  background(150); //gray background
  stroke(255); //white outline
  fill(0,255,0); //green fill color
  line(0,0,width,height); //top left line
  line(width,0,0,height); //top right line
  rectMode(CENTER); //center rectangles/squares
  ellipse(width/2,height/2,width/2,height/2); //circle in the middle or oval*
  rect(width/8,height/2,width/8,height/8); //left square
  rect(7*width/8,height/2,width/8,height/8); //right square //7* defines square location on x-axis
}
