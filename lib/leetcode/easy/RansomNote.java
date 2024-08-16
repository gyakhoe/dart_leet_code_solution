package lib.leetcode.easy;

import java.util.HashMap;

import java.util.Map;


public class RansomNote {
    public boolean canConstruct(String ransomNote, String magazine) {

        Map<Character, Integer> magazineMap = new HashMap<>();
        for(char m : magazine.toCharArray()) {
            magazineMap.put(m, magazineMap.getOrDefault(m, 0) + 1);
        }

        for(char r : ransomNote.toCharArray()) {
            int count = magazineMap.getOrDefault(r, 0);
            if(count == 0) {
                return false;
            }
            magazineMap.put(r, count-1);
        }
        
        return true;   
    }

    public static void main(String[] args) {
        RansomNote checker = new RansomNote();
        
        // Example 1
        String ransomNote1 = "a";
        String magazine1 = "b";
        System.out.println("Example 1 Output: " + checker.canConstruct(ransomNote1, magazine1)); // Output: false
        
        // Example 2
        String ransomNote2 = "aa";
        String magazine2 = "ab";
        System.out.println("Example 2 Output: " + checker.canConstruct(ransomNote2, magazine2)); // Output: false
        
        // Example 3
        String ransomNote3 = "aa";
        String magazine3 = "aab";
        System.out.println("Example 3 Output: " + checker.canConstruct(ransomNote3, magazine3)); // Output: true
    }
}
