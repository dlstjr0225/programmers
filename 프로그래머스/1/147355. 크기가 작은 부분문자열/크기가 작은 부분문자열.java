class Solution {
    public int solution(String t, String p) {
        int answer = 0;
        int len = p.length();
        long num = Long.parseLong(p);
        
        for(int i = 0; i <= t.length() - len; i++) {
            String sub = t.substring(i, i + len);
            long prsNum = Long.parseLong(sub);
            
            if (prsNum <= num) {
                answer ++;
            }
        }
        
        return answer;
    }
}