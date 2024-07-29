String longestCommonPrefix(List<String> strs) {
  String commonPrefix = '';

  if (strs.length == 1) {
    return strs[0];
  }

  strs.sort();
  String firstString = strs.first;
  String lastString = strs.last;

  int minLength = firstString.length <= lastString.length
      ? firstString.length
      : lastString.length;

  int lastCommonIndex = 0;

  while (lastCommonIndex < minLength &&
      firstString[lastCommonIndex] == lastString[lastCommonIndex]) {
    lastCommonIndex++;
  }

  commonPrefix = firstString.substring(0, lastCommonIndex);
  return commonPrefix;
}

void main() {
  List<String> strs1 = ["flower", "flow", "flight"];
  print(
      'Longest Common Prefix for strs1: ${longestCommonPrefix(strs1)}'); // Output: "fl"

  List<String> strs2 = ["dog", "racecar", "car"];
  print(
      'Longest Common Prefix for strs2: ${longestCommonPrefix(strs2)}'); // Output: ""

  List<String> strs3 = ["c", "acc", "ccc"];
  print(
      'Longest Common Prefix for strs3: ${longestCommonPrefix(strs3)}'); // Output: ""
}
