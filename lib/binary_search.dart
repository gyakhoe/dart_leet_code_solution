final List<int> arr = [-2, 4, 7, 8, 9, 11, 13];
final int target = 11;

void binarySearch(List<int> array, int target) {
  var left = 0;
  var right = arr.length - 1;

  while (left <= right) {
    final mid = ((left + right) / 2).floor();
    if (array[mid] == target) {
      print('Target is at $mid');
      break;
    } else if (target < arr[mid]) {
      right = mid - 1;
    } else if (target > arr[mid]) {
      left = mid + 1;
    } else {
      print('Target not found');
      break;
    }
  }
}

void main() {
  binarySearch(arr, target);
}
