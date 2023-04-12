void setup() {
  size(500, 300);
  fill(255, 255, 0);
  textAlign(CENTER);
  textSize(50);
}

void draw() {
  background(0);

  // 년, 월, 일 표시
  int y = year();
  int m = month();
  int d = day();
  text(nf(y, 2) + ":" + nf(m, 2) + ":" + nf(d, 2), width/2, 100);

  // 시간, 분, 초 표시
  int h = hour();
  int min = minute();
  int s = second();
  text("Time: " + nf(h, 2) + ":" + nf(min, 2) + ":" + nf(s, 2), width/2, 200);

  if (millis() > 5000) {
    println("Goodbye!");
    exit();
  }
}
