String mergeAlternatively(String word1, String word2) {
  final A = word1.length;
  int a = 0;
  final B = word2.length;
  int b = 0;
  int currentWord = 1;

  List<String> result = [];

  while (a < A && b < B) {
    if (currentWord == 1) {
      result.add(word1[a]);
      a++;
      currentWord = 2;
    } else {
      result.add(word2[b]);
      b++;
      currentWord = 1;
    }
  }

  while (a < A) {
    result.add(word1[a]);
    a++;
  }
  while (b < B) {
    result.add(word2[b]);
    b++;
  }

  return result.join();
}

void main() {
  final word1 = "ab";
  final word2 = "pqrs";

  print(mergeAlternatively(word1, word2));
}
