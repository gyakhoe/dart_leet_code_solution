final nums = [1, 1, 2];

int removeDuplicates(List<int> nums) {
  /// Information
  /// nums is sorted array in increasing order
  /// in-place : no need to create separate array
  /// return the number of unique elements
  /// order should be same, so cant from last element
  /// sorted increasing order so no need to go at the end
  /// the first element should have next element equal
  /// iff current item match with next check on next element
  ///

// lets assume that there are no duplicates

  int uniqueItemCount = nums.length;

  // if the nums is empty or single element return 1
  if (nums.length <= 1) {
    return 1;
  }

  // initial pointer
  int currentPointer = 0;

  // pointer to check with initial
  int checkPointer = currentPointer + 1;

  while (checkPointer < nums.length) {
    if (nums[currentPointer] == nums[checkPointer]) {
      uniqueItemCount--;
      checkPointer++;
    } else {
      currentPointer++;
      nums[currentPointer] = nums[checkPointer];
      checkPointer++;
    }
  }
  return uniqueItemCount;
}
