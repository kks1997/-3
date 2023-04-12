// 1초마다 원의 색상이 랜덤하게 변경

int interval = 0, current_time = 0, previous_time = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  current_time = millis();
  interval = current_time - previous_time;
  if (interval > 1000) {
    previous_time = millis(); 
    fill(random(255), random(255), random(255));
  }
  ellipse(width/2, height/2, 200, 200);
}
