// 프로세싱: 2개의 값(0∼255) 송신

import processing.serial.*;
Serial port;
int value1, value2;

void setup() {
  size(600, 300);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(value2);
  value1 = int(map(mouseX, 0, width, 0, 180));
  value2 = int(map(mouseY, 0, height, 0, 255));

  fill(255, 255, 0);
  textSize(30);
  text("Angle: " + nf(value1, 3), 10, 50);
  text("Brightness: " + nf(value2, 3), 10, 100);
  fill(0, 255, 0);
  text("Move your Mouse(X: Servo, Y: LED)", 10, 200);

  port.write("A" + value1 + " " + value2 + "\n");
}
