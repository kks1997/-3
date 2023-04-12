// 마우스를 누를 때마다 원의 크기가 조금씩 증가

float d = 10.0;

void setup() {
  size(300, 300);
  noLoop();
}

void draw() {
  background(0);
  ellipse(width/2, height/2, d, d);
  d += 10.0;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    redraw();
  }
  if (mouseButton == RIGHT) {
    loop();
  }
}

void mouseReleased() {
  noLoop();
}
