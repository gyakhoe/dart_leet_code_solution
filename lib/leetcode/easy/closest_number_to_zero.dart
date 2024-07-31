int findClosestNumber(List<int> nums) {
  int closestNumber = nums[0];

  for (int number in nums) {
    if (number.abs() < closestNumber.abs()) {
      closestNumber = number;
    }
  }
  if (closestNumber < 0 && nums.contains(closestNumber.abs())) {
    return closestNumber.abs();
  } else {
    return closestNumber;
  }
}
