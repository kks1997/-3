// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 프로세싱→아두이노: 마우스가 원 안에 있는지 여부에 따라 원/텍스트 색상 및 LED 점멸 제어
// 아두이노→프로세싱: 버튼의 누름 여부에 따라 원/텍스트 색상 제어

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int BUTTON = 2, LED = 6;
int value, prev_value;
float r = 100;
color c;
String s = "";

void setup() {
  size(500, 500);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(BUTTON, Arduino.INPUT);
  arduino.pinMode(LED, Arduino.OUTPUT);
  c = color(255);
}

void draw() {
  background(0);
  int value = arduino.digitalRead(BUTTON);
  float d = dist(width/2, height/2, mouseX, mouseY);

  if (d > r && value == 0) {
    c = color(255, 0, 0);
    s = "LED Off & Button Pressed";
    arduino.digitalWrite(LED, 0);
  } else if (d > r && value == 1) {
    c = color(0, 255, 0);
    s = "LED Off & Button Unpressed";
    arduino.digitalWrite(LED, 0);
  } else if (d < r && value == 0) {
    c = color(0, 0, 255);
    s = "LED On & Button Pressed";
    arduino.digitalWrite(LED, 1);
  } else {
    c = color(255, 255, 0);
    s = "LED On & Button Unpressed";
    arduino.digitalWrite(LED, 1);
  }

  fill(c);
  ellipse(width/2, height/2, r*2, r*2);

  textSize(30);
  textAlign(CENTER);
  text(s, width/2, height/2+150);
}
