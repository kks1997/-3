// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 프로세싱→아두이노: 마우스를 좌우로 움직일 때 배경색 및 LED 밝기 변화
// 아두이노→프로세싱: 가변저항을 돌릴 때 원의 크기 변화

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int VARIABLE_R = 1, LED = 6;

void setup() {
  size(500, 500);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(VARIABLE_R, Arduino.INPUT);
  arduino.pinMode(LED, Arduino.OUTPUT);
}

void draw() {
  int value1 = int(map(mouseX, 0, width, 0, 255));
  background(value1);
  arduino.analogWrite(LED, value1);
  String s1 = "Brightness: " + nf(value1, 3);
  
  int value2 = arduino.analogRead(VARIABLE_R);
  value2 = int(map(value2, 0, 1023, 0, width));
  String s2 = "Diameter: " + nf(value2, 3);

  fill(255, 255, 0);
  ellipse(width/2, height/2, value2, value2);

  fill(255, 0, 0);
  textSize(30);
  text(s1, 50, 50);
  text(s2, 50, 100);
}
