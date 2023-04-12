// 버튼을 누르는 동안 LED 점멸 (함수유형2)

#define BUTTON 2
#define LED 6

void setup() {
  pinMode(BUTTON, INPUT);
  pinMode(LED, OUTPUT);
}

void loop() {
  int value = digitalRead(BUTTON);
  if (value == 0) {
    blink(200);
  }
}

void blink(int time) {
  digitalWrite(LED, 1);
  delay(time);
  digitalWrite(LED, 0);
  delay(time);
}
