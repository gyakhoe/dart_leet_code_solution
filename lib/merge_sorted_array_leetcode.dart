// final nums1 = [1, 2, 3, 0, 0, 0];
// final m = 3;
// final nums2 = [2, 5, 6];
// final n = 3;

// final nums1 = [1];
// final m = 1;
// final List<int> nums2 = [];
// final n = 0;

final nums1 = [0];
final m = 0;
final nums2 = [1];
final n = 1;

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int p2 = n - 1;
  int p1 = m - 1;
  int p = (m + n) - 1;

  while (p1 >= 0 && p2 >= 0) {
    if (nums1[p1] > nums2[p2]) {
      nums1[p] = nums1[p1];
      p1--;
    } else {
      nums1[p] = nums2[p2];
      p2--;
    }
    p--;
  }

  while (p2 >= 0) {
    nums1[p] = nums2[p2];
    p2--;
    p--;
  }
}

void main() {
  merge(nums1, m, nums2, n);
}
