package com.company;

class x {
    int p, q;

    void product() {
        System.out.println("the product of p and q is : +p*q");
    }
}

class y extends x {
    int r;

    void sum() {
        System.out.println("the sum of p q and r is : +p+q+r");
    }
}

public class q1 {
    public static int main(String[] args) {
        x ob1 = new x(5, 10);
        y ob2 = new y(4, 7, 8);

        // ob1.p = 5;
        // ob1.q = 10;
        ob1.product();

        // ob1.p = 4;
        // ob1.q = 7;
        // ob2.r = 8;
        ob2.sum();
    }
}