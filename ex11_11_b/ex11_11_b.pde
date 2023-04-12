// 프로세싱: 가변저항값 수신 후 파일 저장

import processing.serial.*;
Serial port;
PrintWriter output;
int value; 

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);
  output = createWriter("data.txt");
}

void draw() {
  background(0);

  int h = hour();        // 시간 (함수의 반환값: 0∼23)
  int m = minute();      // 분 (함수의 반환값: 0∼59)
  int s = second();      // 초 (함수의 반환값: 0∼59)

  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(30);
  text("Time: " + nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2), width/2, 50);

  textSize(50);
  text("Variable R: " + nf(value, 4), width/2, height/2);

  output.println(h + ":" + m + ":" + s + ":" + nf(value, 4));
}

void serialEvent(Serial port) {
  while (port.available() >= 3) {
    int signal = port.read();
    if (signal == 'A') {
      int value1 = port.read();
      int value2 = port.read();
      value = value1 * 100 + value2;
    }
  }
}

void exit() {
  output.flush();
  output.close();
  println("File Closed!");
}
