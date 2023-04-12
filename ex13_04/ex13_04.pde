// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 마우스를 좌→우로 움직일 때 RGB LED는 R→G→B로 색상 변화

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int RedLED = 11, GreenLED = 5, BlueLED = 3;
int value1, value2, value3;

void setup() {
  size(500, 300);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(RedLED, Arduino.OUTPUT);
  arduino.pinMode(GreenLED, Arduino.OUTPUT);
  arduino.pinMode(BlueLED, Arduino.OUTPUT);
}

void draw() {
  background(0);
  int value = int(map(mouseX, 0, width, 0, 512));

  value1 = constrain(255-value, 0, 255);
  if (value < 256) {
    value2 = constrain(value, 0, 255);
  } else {
    value2 = constrain(510-value, 0, 255);
  }
  value3 = constrain(value-255, 0, 255);

  arduino.analogWrite(RedLED, value1);
  arduino.analogWrite(GreenLED, value2);
  arduino.analogWrite(BlueLED, value3);

  textAlign(CENTER);
  textSize(50);
  fill(value1, value2, value3);
  text("RGB Change: " + nf(value, 3), width/2, height/2);
  println(value1, value2, value3);
}
