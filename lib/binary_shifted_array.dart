final arr1 = [-2, 3, 4, 7, 8, 9, 11, 13];

final arr2 = [13, -2, 3, 4, 7, 8, 9, 11];

final arr3 = [8, 9, 11, 13, -2, 3, 4, 7];

final target = 11;

void search(List<int> arr, int target) {
  // find the shift
  int shift = 0;
  int left = 0;
  int right = arr.length - 1;

  while (arr[left] > arr[right]) {
    shift++;
  }

  if (shift > 0) {
    right = shift - 1;
    binarySearch(arr, left, right, target);
    left = shift + 1;
    right = arr.length - 1;
    binarySearch(arr, left, right, target);
  } else {
    binarySearch(arr, left, right, target);
  }
}

void binarySearch(List<int> arr, int left, int right, int target) {
  while (arr[left] <= arr[right]) {
    final mid = (left + right / 2).floor();
    if (arr[mid] == target) {
      print('Target found at $mid');
      break;
    } else if (target < arr[mid]) {
      right = mid - 1;
    } else if (target > arr[mid]) {
      left = mid + 1;
    } else {
      print('Target not found ');
      break;
    }
  }
}

void main() {
  search(arr1, target);
}
