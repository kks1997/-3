// 배경색 및 원의 외곽선 색상을 바꾸기

size(600, 200);
background(200);
strokeWeight(5);

noStroke();
ellipse(100, 100, 120, 120); 

stroke(0);
ellipse(200, 100, 120, 120);

stroke(255, 0, 0);
ellipse(300, 100, 120, 120);

stroke(0, 255, 0);
ellipse(400, 100, 120, 120);

stroke(0, 0, 255);
ellipse(500, 100, 120, 120);
