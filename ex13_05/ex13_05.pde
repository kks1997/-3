// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 아두이노의 버튼을 누를 때마다 프로세싱에서 원 색상 랜덤 변경

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int BUTTON = 2;
int val, prev_value;
color c;

void setup() {
  size(500, 500);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(BUTTON, Arduino.INPUT);
  c = color(255);
}

void draw() {
  background(0);
  int value = arduino.digitalRead(BUTTON);
  if (value == 0 && prev_value == 1) {
    c = color(random(255), random(255), random(255));
  }
  prev_value = value;

  fill(c);
  ellipse(width/2, height/2, 200, 200);
}
