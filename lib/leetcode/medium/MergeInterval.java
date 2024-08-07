package lib.leetcode.medium;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

public class MergeInterval {
    

    public int[][] merge(int[][] intervals) {


        if(intervals.length == 0 ) return new int[0][0];

        Arrays.sort(intervals, Comparator.comparingInt(interval -> interval[0]));

        
        ArrayList<int[]> merged = new ArrayList<>();
        int[] currentInterval = intervals[0];
        merged.add(currentInterval);
        
        for(int[] interval : intervals) {
            int currentEnd = interval[1];
            int nextStart = interval[0];
            int nextEnd = interval[1];

            if(currentEnd >= nextStart) {
                currentInterval[1] = Math.max(currentEnd, nextEnd);
                }else {
                    // no overlap 
                    currentInterval = interval;
                    merged.add(currentInterval);
                }
        }


        return merged.toArray(new int[merged.size()][]);
    }
}
