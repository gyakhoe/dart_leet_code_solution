final nums = [3, 2, 2, 3];
final val = 3;

int removeElement(List<int> nums, int val) {
  /// return the number of elements that are not equal to k
  /// and it should be place within the k-1 th element
  /// element after the k-1th element will be ignored
  /// it doesn't need to be sorted
  ///

  int pointerToReplaceWith = nums.length - 1;
  int currentPointer = 0;
  int itemCounter = nums.length;

  if (nums.isEmpty) {
    return 0;
  }

  while (currentPointer <= pointerToReplaceWith) {
    if (nums[currentPointer] == val) {
      nums[currentPointer] = nums[pointerToReplaceWith];
      pointerToReplaceWith--;
      itemCounter--;
    } else {
      currentPointer++;
    }
  }
  return itemCounter;
}

void main() {
  final count = removeElement(nums, val);
  print(count);
  print(nums.sublist(0, count));
}
