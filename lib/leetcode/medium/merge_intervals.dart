import 'dart:math';

List<List<int>> merge(List<List<int>> intervals) {
  if (intervals.isEmpty) return [];

  // sort the array with first value
  intervals.sort(
    (a, b) => a[0].compareTo(b[0]),
  );

  List<List<int>> merged = [];
  List<int> currentInterval = intervals[0];

  for (int i = 1; i < intervals.length; i++) {
    if (currentInterval[1] >= intervals[i][0]) {
      // There is an overlap, so we going to marge it.
      currentInterval[1] = max(currentInterval[1], intervals[i][1]);
    } else {
      // no overlap found
      merged.add(currentInterval);
      currentInterval = intervals[i];
    }
  }

  // add the last interval
  merged.add(currentInterval);
  return merged;
}
