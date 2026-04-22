class Solution {
    public int solution(int num) {
        int answer = 0;
        long n = num;
        
        for(int i = 0; i < 500; i++) {
            if(n != 1) {
                n = n % 2 == 0 ? n / 2 : n * 3 + 1;
            } else {
                return answer = i;
            }
        }
        return answer = -1;
    }
}