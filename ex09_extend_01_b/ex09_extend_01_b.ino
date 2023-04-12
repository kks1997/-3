// 수신된 문자열에서 세 개의 정수 추출

#define RedLED 11
#define GreenLED 5
#define BlueLED 3

void setup() {
  pinMode(RedLED, OUTPUT);
  pinMode(GreenLED, OUTPUT);
  pinMode(BlueLED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    int r = Serial.readStringUntil(',').toInt();
    int g = Serial.readStringUntil(',').toInt();
    int b = Serial.readStringUntil('\n').toInt();
    analogWrite(RedLED, r);
    analogWrite(GreenLED, g);
    analogWrite(BlueLED, b);

    Serial.print("Red: ");
    Serial.println(r);
    Serial.print("Green: ");
    Serial.println(g);
    Serial.print("Blue: ");
    Serial.println(b);
  }
}
