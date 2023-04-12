// 프로세싱: 인터럽트 방식
// 마우스 x축 위치값(0∼255) 송신

import processing.serial.*; 
Serial port; 
int value;

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(50);
  text("Brightness: " + nf(value, 3), width/2, height/2);
}

void serialEvent(Serial port) {
  int signal = port.read();
  value = int(map(mouseX, 0, width, 0, 255));
  port.write(value);
}

void mousePressed() {
  println("Start!");
  port.write('A');
}
