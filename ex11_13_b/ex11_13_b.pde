// 프로세싱: 파일에 저장된 값을 읽어 아두이노로 송신

import processing.serial.*; 
Serial port; 
BufferedReader reader;
String data;

void setup() {
  size(500, 300);
  port = new Serial(this, "COM5", 9600);
  reader = createReader("data.txt");
}

void draw() {
  background(0);
  try {
    data = reader.readLine();
  } 
  catch (IOException e) {
    data = null;
  }
  if (data == null) {
    noLoop();
  } else {
    String value[] = split(data, ":");
    int h = int(value[0]);
    int m = int(value[1]);
    int s = int(value[2]);
    int val = int(value[3]);

    fill(255, 255, 0);
    textAlign(CENTER);
    textSize(30);
    text("Time: " + nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2), width/2, 50);

    textSize(50);
    text("Variable R: " + nf(val, 4), width/2, height/2);

    val = int(map(val, 0, 1023, 0, 255));
    port.write(val);
  }
}
