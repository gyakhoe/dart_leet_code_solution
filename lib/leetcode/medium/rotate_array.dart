// final nums = [1, 2, 3, 4, 5, 6, 7];
// final k = 3;

// final nums = [-1];
// final k = 2;

final nums = [1, 2];
final k = 3;

///
/// Information
/// There is integer array called nums
/// you will be given a number
/// for which you have to move the element by kth to right
/// array size will be at least 1
/// k will start from 0
///
void rotate(List<int> nums, int k) {
  int n = nums.length;
  k = k % n; // Handle cases where k is greater than the length of the array
  if (k == 0) return; // No need to rotate if k is 0

  void reverse(List<int> arr, int start, int end) {
    while (start < end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }
  }

  // Reverse the entire array
  reverse(nums, 0, n - 1);
  // Reverse the first k elements
  reverse(nums, 0, k - 1);
  // Reverse the remaining elements
  reverse(nums, k, n - 1);
}

void main() {
  rotate(nums, k);
}
