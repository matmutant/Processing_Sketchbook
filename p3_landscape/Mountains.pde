class Mountains {
  void hills() {
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      //custom colors 
      if (terrain[x][y] > maxg-(10*scl)) {
        fill(240,240,252); // white texture for snow on very high hills
      } else if ((terrain[x][y] <= maxg-(10*scl)) && (terrain[x][y] > maxg-(15*scl))) {
        fill(125,115,95); //rock texture for high hills
      } else if ((terrain[x][y] <= wl+(2*scl)) && (terrain[x][y] > wl-(1*scl))) {
        fill(255,250,200); // sand texture for 'seashores'
      } else if ((terrain[x][y] <= wl-(1*scl)) && (terrain[x][y] > wl-(5*scl))) {
        fill(74,77,42); // brown texture for low depth
      } else if(terrain[x][y] <=wl-(5*scl)) {
        fill(21,25,30); // dark brown texture for deep water
      } else {
        fill(120,150,50); //green texture anywhere else
      }
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
  }
}