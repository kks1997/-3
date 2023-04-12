// 프로세싱: 파일에 저장된 값을 읽고 표시하기

BufferedReader reader;
String data;
int h, m, s, val;

void setup() {
  size(500, 300);
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
    h = int(value[0]);
    m = int(value[1]);
    s = int(value[2]);
    val = int(value[3]);

    fill(255, 255, 0);
    textAlign(CENTER);
    textSize(30);
    text("Time: " + nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2), width/2, 50);

    textSize(50);
    text("Variable R: " + nf(val, 4), width/2, height/2);
  }
}
