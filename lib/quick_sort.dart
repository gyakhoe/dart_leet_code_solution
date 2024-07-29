final arr = [2, 1, 13, 14, 12, 3, 16, 5, 2, 10];

List<int> quickSort(List<int> arr, int left, int right) {
  if (left >= right) {
    return arr;
  }

  final pivot = partition(arr, left, right);
  quickSort(arr, left, pivot - 1);
  quickSort(arr, pivot + 1, right);
  return arr;
}

partition(List<int> arr, l, r) {
  final pivot = arr[r]; // setting last element of array as pivot
  int i = l - 1;
  for (int j = l + 1; j < r; j++) {
    if (arr[j] < pivot) {
      i = i + 1;
      final temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    } else {
      final temp = arr[i + 1];
      arr[i + 1] = arr[r];
      arr[r] = temp;
    }
  }
}

void main() {
  final sortedAery = quickSort(arr, 0, arr.length - 1);
  print(sortedAery);
}
