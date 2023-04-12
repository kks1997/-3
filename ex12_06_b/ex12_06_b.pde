// 프로세싱: 인터럽트 방식
// 마우스 클릭값 송신, 버튼 클릭값 수신

import processing.serial.*;
Serial port;
int value;

void setup() {
  size(500, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  ellipse(width/2, height/2, 200, 200);
}

void serialEvent(Serial port) {
  value = port.read();
  if (value == 0) {
    fill(255, 255, 0);
  } else {
    fill(255, 0, 0);
  }

  if (mousePressed) {
    port.write(1);
  } else {
    port.write(0);
  }
}
