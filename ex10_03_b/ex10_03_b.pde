// 프로세싱: 마우스가 사각형 안에 들어가면 정수(0,1) 송신

import processing.serial.*;
Serial port;
int x = 150, y = 150, w = 200, h = 200;

void setup() {
  size(500, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 0, 0);
    port.write(1);
  } else {
    fill(0, 255, 0);
    port.write(0);
  }
  rect(x, y, w, h);
}
