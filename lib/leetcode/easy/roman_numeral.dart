int romanToInt(String s) {
  int result = 0;

  final Map<String, int> romanIntValueMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  for (int i = 0; i < s.length; i++) {
    if (i + 1 < s.length &&
        romanIntValueMap[s[i]]! < romanIntValueMap[s[i + 1]]!) {
      result -= romanIntValueMap[s[i]]!;
    } else {
      result += romanIntValueMap[s[i]]!;
    }
  }
  return result;
}

void main() {
  print(romanToInt('III'));
  print(romanToInt('LVIII'));
  print(romanToInt('MCMXCIV'));
}
