// 프로세싱: 키보드 정수(1∼4) 송신

import processing.serial.*;
Serial port;

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);

  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(30);
  text("Press on the Number(1,2,3,4)", width/2, height/2);
}

void draw() {
}

void keyPressed() {
  if (key == '1') {
    port.write(1);
  } else if (key == '2') {
    port.write(2);
  } else if (key == '3') {
    port.write(3);
  } else if (key == '4') {
    port.write(4);
  } else {
    port.write(0);
  }
}
