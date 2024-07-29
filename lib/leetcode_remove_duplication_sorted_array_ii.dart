///
/// Information
/// in-place
/// array is sorted in ascending order
/// remove duplicates but at most twice
/// Maintain the relative position
/// return the k, so that element till kth element will be checked.
/// arrays length is equal to 1 or greater
///
int removeDuplicates(List<int> nums) {
  // fulfil the base condition
  if (nums.length <= 2) {
    return nums.length;
  }

  int currentPointer = 2;

  for (int i = 2; i < nums.length; i++) {
    if (nums[i] != nums[currentPointer - 2]) {
      nums[currentPointer] = nums[i];
      currentPointer++;
    }
  }
  return currentPointer;
}

final nums = [1, 1, 1, 2, 2, 3];

void main() {
  final itemCounter = removeDuplicates(nums);
  print(itemCounter);
  print(nums.sublist(0, itemCounter));
}
