// 아두이노: 인터럽트 방식
// 수신된 정수로 LED 밝기 제어

#define LED 6

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
  while (Serial.available() == 0) {
    Serial.write('A');
    delay(300);
  }
}

void loop() {
}

void serialEvent() {
  int value = Serial.read();
  analogWrite(LED, value);
  Serial.write('B');
}
