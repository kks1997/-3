// 원 그리기 (Java 코드)
// test.pde

import processing.core.PApplet;

public class ex13_extend_01_d extends PApplet {
  public void settings() {
    size(300, 300);
  }

  public void setup() {
  }

  public void draw() {
    background(0);
    ellipse(width/2, height/2, 200, 200);
  }

  public static void main(String[] args) {
    PApplet.main("ex13_extend_01_d");
  }
}
