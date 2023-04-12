// 오른쪽으로 랜덤 이동하는 10개의 원1

float[] x = new float[10];
float[] y = new float[10];
float[] velocity = new float[10];

void setup() {
  size(500, 300);
  for (int i = 0; i < 10; i++) {
    x[i] = random(width);
    y[i] = random(height);
    velocity[i] = random(0.5, 5);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < 10; i++) {
    ellipse(x[i], y[i], 30, 30);
    x[i] += velocity[i];
  }
}
