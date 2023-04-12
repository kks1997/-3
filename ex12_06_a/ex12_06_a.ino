// 아두이노: 인터럽트 방식
// 마우스 클릭값 수신, 버튼 클릭값 송신

#define BUTTON 2
#define LED 6

void setup() {
  pinMode(BUTTON, INPUT);
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
  int value1 = Serial.read();
  digitalWrite(LED, value1);
  int value2 = digitalRead(BUTTON);
  Serial.write(value2);
}
