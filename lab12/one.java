import java.io.*;

class one {
    public static void main(String[] args) throws IOException {
        InputStreamReader in = new InputStreamReader(System.in);
        BufferedReader br = new BufferedReader(in);
        System.out.println("enter the word: ");
        String word = br.readLine();
        int i, j, count = 0;

        String newword = "";
        for (i = 0; i < word.length(); i++) {
            count = 0;
            for (j = 0; j < i; j++) {
                if (word.charAt(i) == word.charAt(j))
                    count++;
            }
            if (count == 0)
                newword = newword + word.charAt(i);
        }
        System.out.println(newword);

    }
}