// 배열의 선언,생성,초기화를 따로 처리

int[] x;

void setup() {
  size(300, 300);
  x = new int[3];
  x[0] = -50;
  x[1] = 0;
  x[2] = 50;
}

void draw() {
  background(0);
  for (int i = 0; i < 3; i++) {
    ellipse(x[i], (80*i)+80, 50, 50);
    x[i]++;
  }
}
