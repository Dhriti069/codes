//Q2.Write a Java Program to create three user defined
//exceptions named HrsException,
//MinException, and SecException. Create a class Time that
//contains data members
//hours, minutes, seconds and throw the user defined
//exceptions if hours &gt; 24 OR hours &lt;
//0, minutes &gt; 60 OR minutes &lt; 0, seconds &gt; 60 OR
//seconds &lt; 0. Then demo class using
//suitable try...catch block to catch those exceptions in your
//program.

import java.util.Scanner;

class HrsException extends Exception {
    public HrsException() {
        System.out.println("incorrect input for hours");
    }
}

class MinException extends Exception {
    public MinException() {
        System.out.println("incorrect input for mins");
    }
}

class SecException extends Exception {
    public SecException() {
        System.out.println("incorrect input for seconds");
    }
}

class time{
    Scanner sc = new Scanner(System.in);
    int hr = sc.nextInt();
    int min = sc.nextInt();
    int sec = sc.nextInt();

    sc.close();

    try 
        {
            if(hr>24||h<0);
            throw new HrsException();
        }
     catch (Exception e) {
        System.out.println("incorrect input");
    }

    try
        {
            if(min>60 || hr<0);
            throw new MinException();
        }
        catch(Exception e){
            System.out.println("incorrect input");
        }

    try
        {
            if(sec>60 || hr<0);
            throw new SecException();
        }
        catch(Exception e){
            System.out.println("incorrect input");
        }


    
}