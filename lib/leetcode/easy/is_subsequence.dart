bool isSubsequence(String s, String t) {
  int sLength = s.length;
  int tLength = t.length;

  // handle some base case
  // If subsequence to be check is empty then return true
  if (s.isEmpty) return true;
  // If subsequence to length is greater then return false;
  if (sLength > tLength) return false;

  int j = 0;
  for (int i = 0; i < tLength; i++) {
    if (t[i] == s[j]) {
      if (j == sLength - 1) {
        return true;
      }
      j++;
    }
  }
  return false;
}

void main() {
  print(isSubsequence('abc', 'ahbgdc')); // output true
  print(isSubsequence('axc', 'ahbgdc')); // output false
}
