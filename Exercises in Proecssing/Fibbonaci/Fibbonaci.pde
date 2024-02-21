int a = 0;
int b = 1;
void setup() {
  printFibonacci(10);
}
void printFibonacci(int amount) {

  for (int i = 0; i < amount; i++) {

    int fib = a + b;
    a = b;
    b = fib;
    println(fib);
  }
}
