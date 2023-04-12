// 프로세싱: 가변저항값 2개와 버튼값 수신하여 원 이동

import processing.serial.*;
Serial port;
float value1, value2;
boolean state = false;

void setup() {
  size(500, 500);
  port = new Serial(this, "COM5", 9600);
}

void draw() {
  // 페이딩 효과
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);

  if (state) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 0);
  }
  ellipse(value1, value2, 50, 50);
  println("x:" + value1 + "  y:" + value2);
}

void serialEvent(Serial port) {
  String str = port.readStringUntil('\n');
  if (str != null) {
    str = trim(str);
    String[] value = split(str, ",");
    value1 = map(float(value[0]), 0, 1023, 0, width);
    value2 = map(float(value[1]), 0, 1023, 0, height);
    if (value[2].equals("pressed")) {
      state = !state;
    }
  }
}
