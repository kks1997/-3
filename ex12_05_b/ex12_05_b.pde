// 프로세싱: 인터럽트 방식
// 마우스 위치값 송신, 가변저항값 수신

import processing.serial.*;
Serial port;
int value1, value2;

void setup() {
  size(500, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(value1);
  fill(255, 255, 0);
  ellipse(width/2, height/2, value2, value2);
}

void serialEvent(Serial port) {
  value2 = port.read();
  value2 = int(map(value2, 0, 255, 0, width));
  value1 = int(map(mouseX, 0, width, 0, 255));
  port.write(value1);
}
