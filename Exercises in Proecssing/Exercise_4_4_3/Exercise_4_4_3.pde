void setup(){
  size(200,200); //Canvas size
  }

  void draw() {
    background(0); //Black background
    stroke(255); //Outline color white/line color
    rectMode(CENTER); //Center the square in the frame
    fill(0,255,0); //Square color 
    rect(100,100,150,150); //Green square
    fill(0,0,255); //Circle color
    ellipse(100,100,50,50); //Circle position and size

  }
