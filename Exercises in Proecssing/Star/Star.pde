void setup() {
  int amount = 10;

  printFibonacci(amount);
  
}
void printFibonacci(int amount) {
  int a = 0;
int b = 1;

  for (int i = 0; i < amount; i++) {
    if (i == 0) {
      println(a); 
    }
    if (i == 1) {
      println(b);
    }

    int fib = a + b;
    a = b;
    b = fib;
    println(fib);
  }
}
