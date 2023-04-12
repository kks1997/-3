// 프로세싱 실행 전, 아두이노: 파일 → 예제 → Firmata → StandardFirmata 업로드!
// 아두이노에 연결된 조도센서값 수신하여 원의 크기 변화로 표시

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int LIGHT = 3;
int MIN = 200, MAX = 400;        // 주위의 밝기에 따라 수정 요!

void setup() {
  size(500, 500);
  arduino = new Arduino(this, "COM5", 57600);
  arduino.pinMode(LIGHT, Arduino.INPUT);
}

void draw() {
  // 페이딩 효과 구현
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  int value = arduino.analogRead(LIGHT);
  value = constrain(value, MIN, MAX);
  float r = map(value, MIN, MAX, 0, height);

  fill(255, 255, 0);
  ellipse(width/2, height/2, r, r);
}
