// Serial.write()와 Serial.println()의 차이

void setup() {
  Serial.begin(9600);

  Serial.write('A');
  Serial.print(" : ");
  Serial.println('A');

  Serial.write("ABC");
  Serial.print(" : ");
  Serial.println("ABC");

  Serial.write("65");
  Serial.print(" : ");
  Serial.println(65);

  Serial.write(65);
  Serial.print(" : ");
  Serial.println(65);
}

void loop() {
}
