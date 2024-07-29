//According to the definition of h-index on Wikipedia: The h-index is defined
//as the maximum value of h such that the given researcher has published at
//least h papers that have each been cited at least h times.

int hIndex(List<int> citations) {
  citations.sort();
  int n = citations.length;

  for (int i = 0; i < n; i++) {
    int h = n - i;
    if (citations[i] >= h) {
      return h;
    }
  }
  return 0;
}

void main() {
  List<int> citations1 = [3, 0, 6, 1, 5];
  print('H-Index for citations1: ${hIndex(citations1)}'); // Output: 3

  List<int> citations2 = [1, 3, 1];
  print('H-Index for citations2: ${hIndex(citations2)}'); // Output: 1

  List<int> citations3 = [10, 8, 5, 4, 3];
  print('H-Index for citations3: ${hIndex(citations3)}'); // Output: 4

  List<int> citations4 = [25, 8, 5, 3, 3];
  print('H-Index for citations4: ${hIndex(citations4)}'); // Output: 3
}
