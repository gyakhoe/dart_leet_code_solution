List<String> summaryRange(List<int> nums) {
  List<String> answer = [];

  int i = 0;
  while (i < nums.length) {
    final start = nums[i];
    while (i < nums.length && nums[i] + 1 == nums[i + 1]) {
      i++;
    }
    if (start != nums[i]) {
      answer.add('$start->${nums[i]}');
    } else {
      answer.add(start.toString());
    }
    i++;
  }
  return answer;
}
