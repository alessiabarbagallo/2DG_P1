import processing.pdf.*;
boolean record;
PFont myfont;
int num;

void setup() {
  frameRate(30);
  myfont=createFont("IBMPlexMono-Medium.ttf", 18);
  size(568, 843);
}
void draw() {
  if (record) {
    beginRecord(PDF, "retition-####.pdf");
  }
  textFont(myfont);
  background(255);
  
  if(frameCount % 30==0) {
  background(255);
  }
  
  fill(0);
  textSize(8);
  gradiation();
  fila();

  saveFrame("png/onomatoya-####.png");

  if (record) {
    endRecord();
    record = false;
  }
}

void mousePressed() {
  record = true;
}





void fila() {
  for (int y = 10; y <= height-20; y += random(50)) {
    for (int x = 10; x <= width; x += 15) {
      text("tu", x, y);
    }
  }
}


void gradiation() {
  for (float y = 20; y <= height; y += 10) {
    for (int x = 20; x <= width; x *= 1.08) {
      text("tu", x-10, y-2);
    }
  }
}
