// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 마우스의 좌우 움직임에 따라 LED 밝기 및 서보모터 제어하기

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int LED = 6, SERVO = 14;

void setup() {
  size(500, 300);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(LED, Arduino.OUTPUT);
  arduino.pinMode(SERVO, Arduino.SERVO);
}

void draw() {
  background(0);
  int value1 = int(map(mouseX, 0, width, 0, 255));
  int value2 = int(map(mouseX, 0, width, 0, 180));
  
  arduino.analogWrite(LED, value1);
  arduino.servoWrite(SERVO, value2);
  
  textSize(50);
  fill(255, 255, 0);
  text("Brightness: " + nf(value1, 3), 50, 100);
  text("Servo Angle: " + nf(value2, 3), 50, 200);
}
