import 'dart:math';

class RandomizedSet {
  late List<int> _elements;
  late Map<int, int> _elementIndexMap;
  late Random _random;

  RandomizedSet() {
    _elements = [];
    _elementIndexMap = {};
    _random = Random();
  }

  bool insert(int val) {
    if (_elementIndexMap.containsKey(val)) {
      return false;
    }
    _elements.add(val);
    _elementIndexMap[val] = _elements.length - 1;
    return true;
  }

  bool remove(int val) {
    if (!_elementIndexMap.containsKey(val)) {
      return false;
    }

    int lastElement = _elements.last;
    int indexToRemove = _elementIndexMap[val]!;

    _elements[indexToRemove] = lastElement;
    _elementIndexMap[lastElement] = indexToRemove;

    _elements.removeLast();
    _elementIndexMap.remove(val);
    return true;
  }

  int getRandom() {
    int randomIndex = _random.nextInt(_elements.length);
    return _elements[randomIndex];
  }
}

void main() {
  RandomizedSet randomizedSet = RandomizedSet();

  print(randomizedSet.insert(1)); // true
  print(randomizedSet.remove(2)); // false
  print(randomizedSet.insert(2)); // true
  print(randomizedSet.getRandom()); // 1 or 2
  print(randomizedSet.remove(1)); // true
  print(randomizedSet.insert(2)); // false
  print(randomizedSet.getRandom()); // 2
}
