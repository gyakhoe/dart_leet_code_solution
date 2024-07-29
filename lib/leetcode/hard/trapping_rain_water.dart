import 'dart:math';

int trap(List<int> height) {
  if (height.length == 1) return 0;

  int left = 0;
  int right = height.length - 1;
  int leftMax = height[left];
  int rightMax = height[right];
  int result = 0;
  while (left < right) {
    if (leftMax <= rightMax) {
      left += 1;
      leftMax = max(leftMax, height[left]);
      result += leftMax - height[left];
    } else {
      right -= 1;
      rightMax = max(rightMax, height[right]);
      result += rightMax - height[right];
    }
  }
  return result;
}

final height = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1];

void main() {
  print(trap(height));
}
