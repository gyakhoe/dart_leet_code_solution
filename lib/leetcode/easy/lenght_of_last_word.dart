int lengthOfLasWord(String s) {
  // Lets handle the base case
  if (s.length == 1) {
    return 1;
  }

  int i = s.length - 1;
  int length = 0;

  while (s[i] == ' ') {
    i--;
  }

  while (i > 0 && s[i] != ' ') {
    length++;
    i -= 1;
  }

  return length;

  // s.trim();

  // int lastSpaceIndex = s.lastIndexOf('');
  // int lastWordLength = (s.length - 1) - lastSpaceIndex;
  // return lastWordLength;
}
