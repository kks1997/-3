size(200, 100);
randomSeed(0);
for (int i = 0; i < width; i++) {
  float r = random(255);
  stroke(r);
  line(i, 0, i, 100);
}
