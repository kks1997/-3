// 버튼으로 LED 제어 (if문)

#define BUTTON 2
#define LED 6

void setup() {
  pinMode(BUTTON, INPUT);
  pinMode(LED, OUTPUT);
}

void loop() {
  int value = digitalRead(BUTTON);
  digitalWrite(LED, 0);
  if (value == 0) {
    digitalWrite(LED, 1);
  }
}
