// 수신된 문자열에서 정수 추출

void setup() {
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    String s = Serial.readStringUntil('\n');
    int data = s.toInt();
    Serial.print("data: ");
    Serial.println(data);
  }
}
