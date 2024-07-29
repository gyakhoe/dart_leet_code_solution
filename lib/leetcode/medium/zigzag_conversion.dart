String convert(String s, int numRows) {
  // If the row is one, then there is not enough letters for zigzag,
  // Display at it is
  if (numRows == 1) return s;

  String result = '';
  int currentRow = 0;
  while (currentRow < numRows) {
    // Since we are displaying the word differently from given string
    // we need to find the next letter in string to be displayed
    // this logic for finding next letter only works for first and last row
    int increment = 2 * (numRows - 1);
    for (int i = currentRow; i < s.length; i += increment) {
      result += s[i];
      if (currentRow > 0 &&
          currentRow < numRows - 1 &&
          (i + increment - 2 * currentRow) < s.length) {
        // for all the rows that are between first and last
        // increment formula will be i + (increment -2) * currentRow

        result += s[i + increment - 2 * currentRow];
      }
    }
    currentRow++;
  }

  return result;
}
