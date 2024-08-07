List<int> productExceptSelf(List<int> nums) {
  final n = nums.length;
  List<int> answers = List.filled(n, 1);

  // Lets find the prefix value;
  int prefix = 1;
  for (int i = 0; i < n; i++) {
    answers[i] *= prefix;
    prefix *= nums[i];
  }

  // Lefts find the postfix value;
  int postfix = 1;
  for (int i = n - 1; i >= 0; i--) {
    answers[i] *= postfix;
    postfix *= nums[i];
  }

  return answers;
}

void main() {
  List<int> nums1 = [1, 2, 3, 4];
  print(
      'Output for nums1: ${productExceptSelf(nums1)}'); // Output: [24, 12, 8, 6]

  List<int> nums2 = [-1, 1, 0, -3, 3];
  print(
      'Output for nums2: ${productExceptSelf(nums2)}'); // Output: [0, 0, 9, 0, 0]
}
