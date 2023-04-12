// 아두이노: 가변저항값 송신

#define VARIABLE_R A1

void setup() {
  pinMode(VARIABLE_R, INPUT);
  Serial.begin(9600);
}

void loop( ) {
  int value = analogRead(VARIABLE_R);
  Serial.write('A');
  Serial.write(value / 100);
  Serial.write(value % 100);
  delay(30);
}
