size(200,200);
background(255);
for (float w = 200; w > 0; w -= 20) { // Initialize w to 200, continue if w is greater than 0, decrement w by 20
  stroke(0);
  fill(255 - w); // The fill color gets darker as w decreases
  ellipse(width / 2, height / 2, w, w); // Draw ellipse centered in the window
}
