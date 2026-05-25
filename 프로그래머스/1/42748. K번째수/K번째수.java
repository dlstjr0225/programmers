import java.util.*;

class Solution {
    public int[] solution(int[] array, int[][] commands) {
        int[] answer = new int[commands.length];

        for (int x = 0; x < commands.length; x++) {
            int i = commands[x][0];
            int j = commands[x][1];
            int k = commands[x][2];
            int[] temp = new int[j - i + 1];
            int index = 0;

            for (int y = i - 1; y < j; y++) {
                temp[index++] = array[y];
            }
            Arrays.sort(temp);

            answer[x] = temp[k - 1];
        }
        
        return answer;
    }
}