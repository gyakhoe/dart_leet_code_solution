String intToRoman(int num) {
  String result = '';
  List<dynamic> symList = [
    ['I', 1],
    ['IV', 4],
    ['V', 5],
    ['IX', 9],
    ['X', 10],
    ['XL', 40],
    ['L', 50],
    ['XC', 90],
    ['C', 100],
    ['CD', 400],
    ['D', 500],
    ['CM', 900],
    ['M', 1000],
  ];

  for (var value in symList.reversed) {
    if (num / value[1] > 0) {
      int count = (num / value[1]).floor();
      result += (value[0] * count);
      num = (num % value[1]).toInt();
    }
  }
  return result;
}

void main() {
  int num = 3749;
  print(intToRoman(num));
}
