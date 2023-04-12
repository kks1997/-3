// 배열의 선언 및 초기화를 따로 처리

#define LED 6
int delayTime[3];  // 배열 선언

void setup() {
  pinMode(LED, OUTPUT);
  delayTime[0] = 200; // 배열 초기화
  delayTime[1] = 400;
  delayTime[2] = 600;
}

void loop() {
  for (int i = 0; i < 3; i++) {
    digitalWrite(LED, 1);
    delay(delayTime[i]);
    digitalWrite(LED, 0);
    delay(delayTime[i]);
  }
}
