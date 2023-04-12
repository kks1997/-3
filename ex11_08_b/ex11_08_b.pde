// 프로세싱: 가변저항값 2개 수신하여 원 이동 2

import processing.serial.*;
Serial port;
float value1, value2;

void setup() {
  size(500, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  fill(255, 255, 0);
  ellipse(value1, value2, 50, 50);
  println("x:" + value1 + "  y:" + value2);
}

void serialEvent(Serial port) {
  while (port.available() >= 5) {
    int signal = port.read();
    if (signal == 0xff) {
      int high_byte = port.read();
      int low_byte = port.read();
      int two_byte = (high_byte << 8) | low_byte;
      value1 = map(two_byte, 0, 1023, 0, width);

      high_byte = port.read();
      low_byte = port.read();
      two_byte = (high_byte << 8) | low_byte;
      value2 = map(two_byte, 0, 1023, 0, height);
    }
  }
}
