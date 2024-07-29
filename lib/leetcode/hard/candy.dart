import 'dart:math';

int candy(List<int> ratings) {
  final List<int> arr = List.filled(ratings.length, 1);

  for (int i = 1; i < ratings.length; i++) {
    if (ratings[i - 1] < ratings[i]) {
      arr[i] = arr[i - 1] + 1;
    }
  }

  for (int i = ratings.length - 2; i >= 0; i--) {
    if (ratings[i] > ratings[i + 1]) {
      arr[i] = max(arr[i], arr[i + 1] + 1);
    }
  }

  int totalCandy = 0;
  for (var candy in arr) {
    totalCandy += candy;
  }

  return totalCandy;
}

void main() {
  final ratings = [1, 3, 2, 2, 1];
  print(candy(ratings)); // expected 7
}
