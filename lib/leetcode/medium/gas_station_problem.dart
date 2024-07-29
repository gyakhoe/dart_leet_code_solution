int canCompleteCircuit(List<int> gas, List<int> cost) {
  int totalGas = 0;
  int totalCost = 0;
  int currentGas = 0;
  int startIndex = 0;

  for (int i = 0; i < gas.length; i++) {
    totalGas += gas[i];
    totalCost += cost[i];
    currentGas += gas[i] - cost[i];

    if (currentGas < 0) {
      startIndex = i + 1;
      currentGas = 0;
    }
  }

  return (totalGas >= totalCost) ? startIndex : -1;
}

void main() {
  List<int> gas1 = [1, 2, 3, 4, 5];
  List<int> cost1 = [3, 4, 5, 1, 2];
  print(
      'Starting index for gas1: ${canCompleteCircuit(gas1, cost1)}'); // Output: 3

  List<int> gas2 = [2, 3, 4];
  List<int> cost2 = [3, 4, 3];
  print(
      'Starting index for gas2: ${canCompleteCircuit(gas2, cost2)}'); // Output: -1
}
