// 배열의 선언,생성,초기화를 한번에 처리

int[] x = {-50, 0, 50};

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int i = 0; i < 3; i++) {
    ellipse(x[i], (80*i)+80, 50, 50);
    x[i]++;
  }
}
