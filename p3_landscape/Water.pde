class water {
 void waterFill() {
  noStroke();
  fill(10,10,200,80);
  rect(0,0,cols*scl-scl,rows*scl-scl);
 }
 void waterBorderOX() {
  //draw shape
  beginShape(TRIANGLE_STRIP);
  for (int x = 0; x < cols; x++) {
    if (terrain[x][0] <= wl) {
      fill(10,10,200,80);
    } else {
      fill(255, 255, 255, 0);
    }
    noStroke();
    vertex(x*scl, 0, terrain[x][0]);
    vertex(x*scl, 0, wl);
  }
  endShape();
 }
 void waterBorderOY() {
  //draw shape
  beginShape(TRIANGLE_STRIP);
  for (int y = 0; y < rows; y++) {
    if (terrain[0][y] <= wl) {
      fill(10,10,200,80);
    } else {
      fill(255, 255, 255, 0);
    }
    noStroke();
    vertex(0, y*scl, terrain[0][y]);
    vertex(0, y*scl, wl);
  }
  endShape();
 }
 void waterBorderrowsX() {
  //draw shape
  beginShape(TRIANGLE_STRIP);
  for (int x = 0; x < cols; x++) {
    if (terrain[x][rows-1] <= wl) {
      fill(10,10,200,80);
    } else {
      fill(255, 255, 255, 0);
    }
    noStroke();
    vertex(x*scl, rows*scl-scl, terrain[x][rows-1]);
    vertex(x*scl, rows*scl-scl, wl);
  }
  endShape();
 }
 void waterBordercolsY() {
  //draw shape
  beginShape(TRIANGLE_STRIP);
  for (int y = 0; y < rows; y++) {
    if (terrain[cols-1][y] <= wl) {
      fill(10,10,200,80);
    } else {
      fill(255, 255, 255, 0);
    }
    noStroke();
    vertex(cols*scl-scl, y*scl, terrain[cols-1][y]);
    vertex(cols*scl-scl, y*scl, wl);
  }
  endShape();
 }
}