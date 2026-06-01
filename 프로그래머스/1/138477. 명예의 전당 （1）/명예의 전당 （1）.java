import java.util.*;

class Solution {
    public int[] solution(int k, int[] score) {
        int[] answer = new int[score.length];
        ArrayList<Integer> hall = new ArrayList<>();

        for (int i = 0; i < score.length; i++) {
            hall.add(score[i]);
            Collections.sort(hall, Collections.reverseOrder());
            if (hall.size() > k) {
                hall.remove(hall.size() - 1);
            }

            answer[i] = hall.get(hall.size() - 1);
        }
        return answer;
    }
}