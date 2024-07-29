class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class JoinTwoListNode {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    // Create a dummy list for new merged sort
    ListNode dummy = ListNode(0);
    ListNode current = dummy;

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        current.next = list1;
        list1 = list1.next;
      } else {
        current.next = list2;
        list2 = list2.next;
      }
    }

    if (list1 != null) {
      current.next = list1;
    } else {
      current.next = list2;
    }

    return dummy.next;
  }
}
