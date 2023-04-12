// 배열을 사용하여 세 개의 원을 오른쪽으로 이동

int[] x = {-50, 0, 50};

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x[0], 80, 50, 50);
  ellipse(x[1], 160, 50, 50);
  ellipse(x[2], 240, 50, 50);
  x[0]++;
  x[1]++;
  x[2]++;
}
