void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<int> result = spiralOrder(matrix);
  print(result); // Output: [1, 2, 3, 6, 9, 8, 7, 4, 5]
}

List<int> spiralOrder(List<List<int>> matrix) {
  List<int> result = [];
  if (matrix.isEmpty) {
    return result;
  }

  int top = 0, bottom = matrix.length - 1;
  int left = 0, right = matrix[0].length - 1;

  while (top <= bottom && left <= right) {
    // Traverse from left to right
    for (int i = left; i <= right; i++) {
      result.add(matrix[top][i]);
    }
    top++;

    // Traverse from top to bottom
    for (int i = top; i <= bottom; i++) {
      result.add(matrix[i][right]);
    }
    right--;

    if (top <= bottom) {
      // Traverse from right to left
      for (int i = right; i >= left; i--) {
        result.add(matrix[bottom][i]);
      }
      bottom--;
    }

    if (left <= right) {
      // Traverse from bottom to top
      for (int i = bottom; i >= top; i--) {
        result.add(matrix[i][left]);
      }
      left++;
    }
  }

  return result;
}
