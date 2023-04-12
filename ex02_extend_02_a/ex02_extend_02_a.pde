// 원 그리는 기준점을 바꾸어 그리기

size(300, 300);

ellipseMode(CENTER);  // 기본모드(생략)
ellipse(150, 150, 120, 120);

ellipseMode(CORNER);
ellipse(150, 150, 120, 120);
