import peasy.*;


int cols, rows;
int scl = 10;
//water level
int wl = scl * 2;
int w = 1800;
int h = 900;
//min an max ground level
int ming = -150;
int maxg = 255;
float[][] terrain;

PeasyCam cam;
Mountains mo;
scaleLines scli;
water wat;
borders bor;

void setup () {
  size(600, 600, P3D);
  cols = w / scl;
  rows = h / scl;
  terrain = new float[cols][rows];
  cam = new PeasyCam(this, 500);
  mo = new Mountains();
  scli = new scaleLines();
  wat = new water();
  bor = new borders();
}

void draw() {
  //flying -= 0.01;
  float yoff = 0;
  //float yoff = flying;
  for (int y = 0; y < rows; y++) {
  float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff,yoff), 0, 1, ming, maxg);
      xoff += 0.05;
    }
    yoff += 0.05;
  }
  background(0);
  //stroke(255);
  //noFill();
  noStroke();
  fill(255);
  lights();
  translate(-w/2, -h/2);

  //scale lines
  stroke(255,0,0);
  line(0 ,0 ,0 ,w ,0 , 0);
  stroke(0,255,0);
  line(0 ,0 ,0 ,0 ,h , 0);  
  stroke(0,0,255);
  line(0 ,0 ,0 ,0 ,0 , 600);
  noStroke();
  
  //draw scales lines
  scli.sclines();
  //draw mountains
  mo.hills();
  //draw landscape borders
  //stripped borders (profile), uncomment to use
  //bor.borderOYs();
  //bor.borderOXs();
  
  //solid borders
  bor.borderOXf(ming);
  bor.borderOYf(ming);
  bor.borderrowsXf(ming);
  bor.bordercolsYf(ming);
  //draw water
  //translate to water level
  translate(0,0,wl);
  wat.waterFill();
  //undo water level translation
  translate (0,0,-wl);
}