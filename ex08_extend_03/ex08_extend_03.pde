// 프로세싱에서의 비트 연산 예

int x = 12;
int y = 7;
int result1 = x & y;
int result2 = x | y;
int result3 = x ^ y;
int result4 = ~x;
int result5 = y >> 2;
int result6 = y << 2;

println("x = " + x + "\t\t" + " = " + binary(x));
println("y = " + y + "\t\t" + " = " + binary(y));
println("x & y = " + result1 + "\t" + " = " + binary(result1));
println("x | y = " + result2 + "\t" + " = " + binary(result2));
println("x ^ y = " + result3 + "\t" + " = " + binary(result3));
println("~x = " + result4 + "\t" + " = " + binary(result4));
println("y >> 2 = " + result5 + "\t" + " = " + binary(result5));
println("y << 2 = " + result6 + "\t" + " = " + binary(result6));
