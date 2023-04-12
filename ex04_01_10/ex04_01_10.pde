color c;        // ❶ color형 변수 선언

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (mousePressed && (mouseButton == LEFT)) {
    c = color(255, 0, 0);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    c = color(0, 255, 0);
  } else {
    c = color(0, 0, 255);
  }
  fill(c);
  ellipse(width/2, height/2, 200, 200);
}
