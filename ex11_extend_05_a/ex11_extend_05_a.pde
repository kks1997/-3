// 프로세싱: 아스키코드를 문자, 10진수, 16진수, 2진수 순으로 출력
println("ASCII Table");
for (int i = 0; i < 128; i++) {
  println((char)i + ", DEC: " + i + ", HEX: " + hex(i, 2) + ", BIN: " + binary(i, 7));
}
