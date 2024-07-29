final nums = [3, 2, 3];

final nums2 = [2, 2, 1, 1, 1, 2, 2];

int majorityElement(List<int> nums) {
  nums.sort();
  final n = nums.length;
  return nums[(n / 2).floor()];
}
