// 프로세싱: 마우스 클릭값(문자열) 송신

import processing.serial.*;
Serial port;

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);

  background(0);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(30);
  text("Press on the mouse button", width/2, height/2);
}

void draw() {
  if (mousePressed) {
    port.write("on\n");
  } else {
    port.write("off\n");
  }
}
