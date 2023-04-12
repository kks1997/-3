// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 숫자키를 눌러 LED 점등 갯수 제어

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int num, LED[] = {6, 7, 8, 12};

void setup() {
  size(500, 300);
  arduino = new Arduino(this, "COM5", 57600);
  for (int i = 0; i < 4; i++) {
    arduino.pinMode(LED[i], Arduino.OUTPUT);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < 4; i++) {
    arduino.digitalWrite(LED[i], 0);
  }
  for (int i = 0; i < num; i++) {
    arduino.digitalWrite(LED[i], 1);
  }

  fill(255, 255, 0);
  textSize(30);
  text("Press on the Number(1,2,3,4)", 30, 50);
  textSize(40);
  text("LED ON Number: " + num, 30, height/2);
}

void keyPressed() {
  if (key == '1') {
    num = 1;
  } else if (key == '2') {
    num = 2;
  } else if (key == '3') {
    num = 3;
  } else if (key == '4') {
    num = 4;
  } else {
    num = 0;
  }
}
