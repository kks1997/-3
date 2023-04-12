// 마우스가 원 내부인지 외부인지에 따라 배경색 변경

void setup() {
  size(300, 300);
}

void draw() {
  float x = width/2, y = height/2, r = 100.0;
  if (check(x, y, r)) {
    background(255, 0, 0);
  } else {
    background(0);
  }
  ellipse(x, y, r*2, r*2);
}

boolean check(float xx, float yy, float rr) {
  float d = dist(xx, yy, mouseX, mouseY);
  if (d < rr) {
    return true;
  } else {
    return false;
  }
}
