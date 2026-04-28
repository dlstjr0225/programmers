import java.util.Arrays;

class Solution {
    public int[] solution(int[] arr) {
        int[] answer = {};
        
        if(arr.length <= 1) {
           return answer = new int[] {-1};
        }
        
        int min = Arrays.stream(arr).min().getAsInt();
        
        answer = Arrays.stream(arr).filter(v -> v != min).toArray();
        
        return answer;
    }
}