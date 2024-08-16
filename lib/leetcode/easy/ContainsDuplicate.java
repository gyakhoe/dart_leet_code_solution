package lib.leetcode.easy;

import java.util.HashSet;
import java.util.Set;

public class ContainsDuplicate {
    
        public boolean containsDuplicate(int[] nums) {
        

        Set<Integer> numSet = new HashSet<Integer>();
        for(int n: nums) {
            if(numSet.contains(n)) {
                return true;
            }
            numSet.add(n);
        }
        return false;
    }
}
