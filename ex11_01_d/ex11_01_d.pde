// 프로세싱: 인터럽트(interrupt) 방식
// 버튼값 수신하여 원 색상 변경

import processing.serial.*;
Serial port;
int value;

void setup() {
  size(500, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  if (value == 0) {
    fill(255, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  ellipse(width/2, height/2, 200, 200);
}

// 수신값이 있으면 자동 호출
void serialEvent(Serial port) {
  value = port.read();
}
