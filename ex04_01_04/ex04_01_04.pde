// 두 개의 사각형 영역 중 마우스가 위치한 영역의 색상 변경

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  if (mouseY < height/2) {
    rect(0, 0, width, height/2);
  } else {
    rect(0, height/2, width, height/2);
  }
}
