package lib.leetcode.medium;


class RotateImage {
    public void rotate(int[][] matrix) {
        final int n = matrix.length;

        // Transpose the matrix
        for(int i =0; i< n; i++) {
            for (int j= i+1; j< n; j++) {
                int temp = matrix[i][j];
                matrix[i][j] = matrix[j][i];
                matrix[j][i] = temp;
            }
        }

        // Horizontal reflection
        for(int i = 0; i< n; i++) {
            for (int j = 0; j < n/2; j++) {
                int temp = matrix[i][j];
                matrix[i][j] = matrix[i][n-j-1];
                matrix[i][n-j-1] = temp;
            }
        }
    }
}