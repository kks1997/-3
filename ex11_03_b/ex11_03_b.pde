// 프로세싱: 조도센서값 수신하여 문자 이동

import processing.serial.*;
Serial port;
int value;

void setup( ) {
  size(300, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(50);
  text(nf(value, 3), width/2, value);
}

void serialEvent(Serial port) {
  value = port.read();
  value = int(map(value, 0, 255, 0, height));
}
