import java.util.*;

class Solution {
    public int[] solution(String s) {
        int[] answer = new int[2];
        
        int cnt = 0;
        int zero = 0;
		
        while(!s.equals("1")) {
            int length = s.length();
            s = s.replace("0", "");
            zero += length - s.length();
            length = s.length();
			
            List<Integer> list = new ArrayList<>();
            while(length > 1) {
            list.add(length % 2);
                length /= 2;
            }
			
            StringBuilder sb = new StringBuilder();
            sb.append("1");
            for(int i = list.size() - 1; i >= 0; i--) {
                sb.append(list.get(i));
            }
			
            s = sb.toString();
            cnt++;
        }
        
        answer[0] = cnt;
        answer[1] = zero;
        return answer;
    }
}