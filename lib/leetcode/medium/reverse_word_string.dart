String reverseWord(String s) {
  String result = '';
  int i = 0;
  int n = s.length;

  while (i < n) {
    while (i < n && s[i] == ' ') {
      i++;
    }
    if (i >= n) break;
    int j = i + 1;
    while (j < n && s[j] != ' ') {
      j++;
    }
    String sub = s.substring(i, j);
    if (result.isEmpty) {
      result = sub;
    } else {
      result = "$sub $result";
    }
    i = j + 1;
  }
  return result;
}
