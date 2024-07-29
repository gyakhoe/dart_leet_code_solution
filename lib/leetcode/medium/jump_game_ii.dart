import 'dart:math';

int jump(List<int> nums) {
  int jump = 0;
  int l = 0;
  int r = 0;
  int farthest = 0;
  while (r < nums.length - 1) {
    for (int i = l; i <= r; i++) {
      farthest = max(farthest, i + nums[i]);
    }
    l = r + 1;
    r = farthest;
    print(farthest);
    jump++;
  }
  return jump;
}

final nums = [2, 3, 1, 1, 4];

void main() {
  print('jumps is ${jump(nums)}');
}
