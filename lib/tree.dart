class Node {
  final int data;
  final Node left;
  final Node right;

  Node({
    required this.data,
    required this.left,
    required this.right,
  });
}

int findSum(Node? root) {
  if (root == null) {
    return 0;
  }

  return root.data + findSum(root.left) + findSum(root.right);
}
