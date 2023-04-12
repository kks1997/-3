// 프로세싱: 키(UP, DOWN)로 정숫값 송신 

import processing.serial.*;
Serial port;
int freq;

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(50);
  text("Frequency: " + freq, width/2, height/2);
  freq = constrain(freq, 100, 500);
  float value = map(freq, 100, 500, height, 0);
  fill(255, 0, 0, 200);
  ellipse(width/2, value, 50, 50);
}

void keyPressed() {
  if (keyCode == UP) {
    freq += 100;
  } else if (keyCode == DOWN) {
    freq -= 100;
  }
  freq = constrain(freq, 100, 500);
  port.write(freq + "\n");
}
