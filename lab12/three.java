import java.io.*;

public class three {
    public static void main(String[] args) throws IOException {
        InputStreamReader read = new InputStreamReader(System.in);
        BufferedReader br = new BufferedReader(read);
        System.out.println("Enter the string");
        String str = br.readLine();
        str = str + " ";

        System.out.println("enter the value of str1");
        String str1 = br.readLine();
        System.out.println("enter the value of str2");
        String str2 = br.readLine();

        String word = "", newstring = "";
        int i;
        char ch;
        for (i = 0; i < str.length(); i++) {
            ch = str.charAt(i);
            if (ch != ' ')
                word = word + ch;
            else {

                if (word.equalsIgnoreCase(str1))
                    newstring = newstring + str2 + " ";
                else
                    newstring = newstring + word + " ";

                word = "";
            }

        }

        System.out.println(newstring);

    }
}