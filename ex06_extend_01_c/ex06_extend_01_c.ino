// 배열의 선언 및 초기화를 한번에 처리

#define LED 6
int delayTime[3] = {200, 400, 600};

void setup() {
  pinMode(LED, OUTPUT);
}

void loop() {
  for (int i = 0; i < 3; i++) {
    digitalWrite(LED, 1);
    delay(delayTime[i]);
    digitalWrite(LED, 0);
    delay(delayTime[i]);
  }
}
