class LongesCommonString {
  String longestCommonString(List<String> strs) {
    var commonPrefix = '';

    if (strs.length == 1) {
      return commonPrefix;
    }

    strs.sort();

    final firstString = strs.first;
    final lastString = strs.last;

    final minLength = firstString.length < lastString.length
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
}
