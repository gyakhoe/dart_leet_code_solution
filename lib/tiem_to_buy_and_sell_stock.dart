int maxProfit(List<int> prices) {
  int minPrice = prices[0];
  int maxProfit = 0;

  for (int i = 1; i < prices.length; i++) {
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else {
      final profit = prices[i] - minPrice;
      if (maxProfit < profit) {
        maxProfit = profit;
      }
    }
  }
  return maxProfit;
}

void main() {
  List<int> prices1 = [7, 1, 5, 3, 6, 4];
  print('Max profit for prices1: ${maxProfit(prices1)}'); // Output: 5

  List<int> prices2 = [7, 6, 4, 3, 1];
  print('Max profit for prices2: ${maxProfit(prices2)}'); // Output: 0
}
