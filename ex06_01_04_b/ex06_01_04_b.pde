// 오른쪽으로 랜덤 이동하는 10개의 원2

int num = 10;
float[] x = new float[num];
float[] y = new float[num];
float[] velocity = new float[num];

void setup() {
  size(500, 300);
  for (int i = 0; i < num; i++) {
    x[i] = random(width);
    y[i] = random(height);
    velocity[i] = random(0.5, 5);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], 30, 30);
    x[i] += velocity[i];
  }
}
