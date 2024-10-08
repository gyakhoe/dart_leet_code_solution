void rotate(List<List<int>> matrix) {
  // To solve this we have to transpose first
  // Then perform horizontal reflection on transposed matrix

  final n = matrix.length;

  // Transpose
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      int temp = matrix[i][j];
      matrix[i][j] = matrix[j][i];
      matrix[j][i] = temp;
    }
  }

  // Horizontal reflection
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n ~/ 2; j++) {
      int temp = matrix[i][j];
      matrix[i][j] = matrix[i][n - j - 1];
      matrix[i][n - j - 1] = temp;
    }
  }
}
