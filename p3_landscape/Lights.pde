class Lights {
  void sunMoon() {
      //test sun
  
  float rg = map(abs((millis()%100000)-50000), 0, 50000, 0, 255);
  int sunDist = 10;
 // background(0);
  //background(rg, rg, 0);
  pushMatrix();
  rotate(-PI);
  rotateX(PI/2);
  //rotateZ(PI/2);
  rotate(map(millis()%100000, 0, 100000, 0, TWO_PI));
  // The Sun
  fill(255, 0+rg, 0+rg); 
  ellipse(0, sunDist/2*rows*scl, 50, 50);
  pointLight(255, 0+rg, 0+rg, 0, sunDist*rows*scl,0);
  // The Moon
  fill(255,255,255);
  ellipse(0, -rows*sunDist/2*scl, 50, 50);
  pointLight(100, 100, 100, 0, -rows*sunDist*scl,0);
  popMatrix();
  
    }
}