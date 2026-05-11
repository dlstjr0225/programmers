class Solution {
    public int[] solution(int n, int m) {
        int[] answer = new int[2];
        
        int great = 0;
        
        for(int i = 1; i <= Math.min(n,m); i++) {
            if(n % i == 0 && m % i == 0) {
                great = i;
            }
        }
        
        int least = (n * m) / great;
        
        answer[0] = great;
        answer[1] = least;
        
        return answer;
    }
}