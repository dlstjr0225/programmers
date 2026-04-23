class Solution {
    public String solution(String phone_number) {
        String answer = "";
        int pNum = phone_number.length();
        
        String stars = "*".repeat(pNum - 4);
        String num = phone_number.substring(pNum - 4);
        
        answer = stars + num;
        
        return answer;
    }
}