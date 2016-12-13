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
}