// 프로세싱: 마우스 x축 위치값(0∼255) 송신

import processing.serial.*; 
Serial port; 

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  int value = int(map(mouseX, 0, width, 0, 255));
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(50);
  text("Brightness: " + nf(value, 3), width/2, height/2);
  port.write(value);
}
