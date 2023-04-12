// 마우스를 따라 선 그리기

void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  stroke(255, 255, 0);
  line(pmouseX, pmouseY, mouseX, mouseY);
  println(pmouseX, pmouseY, mouseX, mouseY); 
}
