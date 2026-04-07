import java.util.Arrays;

class Solution {
    public boolean solution(int x) {
        boolean answer = true;
        
        String s = Long.toString(x);
        char[] c = s.toCharArray();

        System.out.print(Arrays.toString(c));
        
        int den = 0;
        
        for(int i=0; i < c.length; i++) {
            den += c[i] - '0';
        }
        
        System.out.print(den);
        
        answer = x % den == 0;

        return answer;
    }
}