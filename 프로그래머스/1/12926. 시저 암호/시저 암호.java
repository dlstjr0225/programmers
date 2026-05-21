class Solution {
    public String solution(String s, int n) {
        String answer = "";
        StringBuilder sb = new StringBuilder();

        for (char ch : s.toCharArray()) {
            if (ch == ' ') {
                sb.append(' ');
            }
            else if (Character.isLowerCase(ch)) {
                sb.append((char) ((ch - 'a' + n) % 26 + 'a'));
            }
            else if (Character.isUpperCase(ch)) {
                sb.append((char) ((ch - 'A' + n) % 26 + 'A'));
            }
        }

        answer = sb.toString();
        
        return answer;
    }
}