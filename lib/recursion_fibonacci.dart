void main() {
  print(fib(3));
}

int fib(int n) {
  // assuming n is positive number
  if (n >= 3) {
    return fib(n - 1) + fib(n - 2);
  }

  return 1;
}
