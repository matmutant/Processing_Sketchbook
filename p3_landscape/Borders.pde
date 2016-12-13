class borders {
//striped Borders
  void borderOYs() {
    stroke(255);
    for (int y = 0; y < rows; y++) {
      line(0, y*scl, 0, 0, y*scl, terrain[0][y]);
    }
}
  void borderOXs() {
    stroke(255);
    for (int x = 0; x < cols; x++) {
      line(x*scl, 0, 0, x*scl, 0, terrain[x][0]);
    }
  }
//solid Borders, parameter passes the bottom coordinates

  void borderOXf(int bottom) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
    fill(115);
    noStroke();
    vertex(x*scl, 0, terrain[x][0]);
    vertex(x*scl, 0, bottom);
    }
    endShape();
  }
  void borderOYf(int bottom) {
    beginShape(TRIANGLE_STRIP);
    for (int y = 0; y < rows; y++) {
    fill(115);
    noStroke();
    vertex(0, y*scl, terrain[0][y]);
    vertex(0, y*scl, bottom);
    }
    endShape();
  }
  void borderrowsXf(int bottom) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
    fill(115);
    noStroke();
    vertex(x*scl, rows*scl-scl, terrain[x][rows-1]);
    vertex(x*scl, rows*scl-scl, bottom);
    }
    endShape();
  }
  void bordercolsYf(int bottom) {
    beginShape(TRIANGLE_STRIP);
    for (int y = 0; y < rows; y++) {
    fill(115);
    noStroke();
    vertex(cols*scl-scl, y*scl, terrain[cols-1][y]);
    vertex(cols*scl-scl, y*scl, bottom);
    }
    endShape();
  }
}