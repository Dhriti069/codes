class strin {
    public static void main(String ar[]) {
        String s = "Computer Science";
        System.out.println("Length of string :" + s.length());
        String s1 = new String();
        System.out.println("Length of new string :" + s1.length());
        String t = s.substring(6, 7);
        System.out.println(t);
        System.out.println(s.replace('c', 'd'));
        System.out.println(s.replace("Science", "Technology"));
        System.out.println(s);
    }
}
