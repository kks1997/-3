// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 마우스를 눌러 LED 점멸 제어

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int LED = 6;

void setup() {
  size(500, 300);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(LED, Arduino.OUTPUT);

  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(30);
  text("Press on the mouse button", width/2, height/2);
}

void draw() {
  if (mousePressed) {
    arduino.digitalWrite(LED, 1);
  } else {
    arduino.digitalWrite(LED, 0);
  }
}
