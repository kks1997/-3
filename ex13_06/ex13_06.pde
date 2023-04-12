// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 아두이노에 연결된 가변저항을 돌리면 프로세싱에서 원주상을 회전

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int VARIABLE_R = 1;

void setup() {
  size(500, 500);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(VARIABLE_R, Arduino.INPUT);
}

void draw() {
  background(0);
  int value = arduino.analogRead(VARIABLE_R);
  int degree = int(map(value, 0, 1023, 0, 360));

  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(30);
  text("Degree: " + nf(degree, 3), width/2, 100);

  noFill();
  stroke(255);
  ellipse(width/2, height/2, width, height);

  float theta = radians(degree);
  float x = width/2 + width/2 * cos(theta);
  float y = height/2 + height/2 * sin(theta);

  stroke(255, 255, 0);
  line(width/2, height/2, x, y);

  fill(255, 255, 0);
  ellipse(x, y, 50, 50);
}
