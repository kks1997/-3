// 프로세싱: 가변저항값 수신하여 표시 1

import processing.serial.*;
Serial port;
int value;

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(50);
  text("Variable R: " + nf(value, 4), width/2, height/2);
}

void serialEvent(Serial port) {
  String str = port.readStringUntil('\n');
  if (str != null) {
    str = trim(str);
    value = int(str);
  }
}
