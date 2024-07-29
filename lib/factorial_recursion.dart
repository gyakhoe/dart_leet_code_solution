void main() {
  final fact = factorial(3);
  print('factorial is $fact');
}

int factorial(int n) {
  // assuming that n is positive integer or 0

  if (n >= 1) {
    return n * factorial(n - 1);
  }
  return 1;
}
