package lib.leetcode.medium;

import java.util.Arrays;

public class ProductOfArrayExceptSelf {

    public int[] productExceptSelf(int[] nums) {
        final  int n = nums.length;
         int[] answers = new int[n];
         Arrays.fill( answers, 1);

        // lets find all prefix value first
        int prefix = 1;
        for (int i = 0; i<n; i++) {
            answers[i] *= prefix;
            prefix *= nums[i];
        }

        // Lets find all the postfix values with prefix value already found
        int postfix = 1;
        for(int i = n -1; i >= 0; i--) {
            answers[i] *= postfix;
            postfix *= nums[i];
        }

        return answers;
    }
    
}
