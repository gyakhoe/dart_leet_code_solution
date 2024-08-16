package lib.leetcode.easy;

import java.util.HashSet;
import java.util.Set;

class Solution {
    public int numJewelsInStones(String jewels, String stones) {
        

        Set<Character> jewelSet = new HashSet<Character>();
        for(char j : jewels.toCharArray()) {
            jewelSet.add(j);
        }

        int count = 0;
        for(char s : stones.toCharArray()) {
            if(jewelSet.contains(s)) {
                count++;
            }
        }
        return count;
    }
}