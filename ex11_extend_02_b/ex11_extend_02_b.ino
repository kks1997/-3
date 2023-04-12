// Serial.write()와 Serial.println()의 차이

void setup() {
  Serial.begin(9600);

  int num1 = Serial.write("65");
  Serial.print(" ");
  Serial.print(num1);
  Serial.print(" : ");
  int num2 = Serial.print("65");
  Serial.print(" ");
  Serial.println(num2);

  int num3 = Serial.write(65);
  Serial.print(" ");
  Serial.print(num3);
  Serial.print(" : ");
  int num4 = Serial.print(65);
  Serial.print(" ");
  Serial.println(num4);
}

void loop() {
}
