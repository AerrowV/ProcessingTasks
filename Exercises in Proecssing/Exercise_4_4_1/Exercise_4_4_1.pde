void setup(){
  size(200,200);
  }

  void draw() {
    background(0); //Black background
    stroke(255); //Outline color white
    fill(255,0,0); //Inside of object color red
    ellipse(50,50,50,50); //Top left circle
    ellipse(150,50,50,50); //Top right circle
    ellipse(50,150,50,50); //Bottom left circle
    ellipse(150,150,50,50); //Bottom right circle
  }
