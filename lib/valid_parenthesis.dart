class ValidParenthesis {
  bool isValid(String s) {
    if (s.length == 1 || s.length % 2 != 0) {
      print('S length is either 1 or odd');
      return false;
    }

    final matchingBrackets = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    final List<String> stackForOpenBrackets = [];

    for (int i = 0; i < s.length; i++) {
      final currentChar = s[i];
      if (matchingBrackets.containsKey(currentChar)) {
        final topElement = stackForOpenBrackets.isNotEmpty
            ? stackForOpenBrackets.removeLast()
            : '#';
        if (topElement != matchingBrackets[currentChar]) {
          return false;
        }
      } else {
        stackForOpenBrackets.add(currentChar);
      }
    }

    return stackForOpenBrackets.isEmpty;
  }
}
