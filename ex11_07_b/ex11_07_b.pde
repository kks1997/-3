// 프로세싱: 가변저항값 2개 수신하여 원 이동 1

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
  while (port.available() >= 3) {
    int signal = port.read();
    if (signal == 'A') {
      value1 = port.read();
      value2 = port.read();
      value1 = map(value1, 0, 255, 0, width);
      value2 = map(value2, 0, 255, 0, height);
    }
  }
}
