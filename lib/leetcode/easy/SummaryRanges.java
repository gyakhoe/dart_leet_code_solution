package lib.leetcode.easy;

import java.util.ArrayList;
import java.util.List;

class Solution {

    public List<String> summaryRanges(int[] nums) {

        List<String> answers = new ArrayList<String>();
        int i = 0;
        while(i < nums.length) {
            int start = nums[i];
            while (i < nums.length -1 && nums[i]+1==nums[i+1]){
                i++;
            }
            if(start != nums[i]) {
                answers.add(Integer.toString(start)+"->"+Integer.toString(nums[i]));
            }else {
                answers.add(Integer.toString(i));
            }
            i++;
        }
        return answers;
    }


} 