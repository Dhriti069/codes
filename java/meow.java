interface transaction {
    void deposit(Double b);

    void withdraw(Double b);
}

class HDFC implements transaction {
    Double bal;

    HDFC(Double b) {
        bal = b;
    }

    public void deposit(Double b) {
        bal += b;
        System.out.println(b + " deposited");
    }

    public void withdraw(Double b) {
        bal -= b;
        System.out.println(b + " withdrawn");
    }

    public void display() {
        System.out.println("HDFC balance: " + bal);
    }
}

class ICICI implements transaction {
    Double bal;

    ICICI(Double b) {
        bal = b;
    }

    public void deposit(Double b) {
        bal += b;
        System.out.println(b + " deposited");
    }

    public void withdraw(Double b) {
        bal -= b;
        System.out.println(b + " withdrawn");
    }

    public void display() {
        System.out.println("ICICI balance: " + bal);
    }
}

public class meow {
    public static void main(String[] args) {
        HDFC one = new HDFC(5000.0);
        ICICI two = new ICICI(10000.0);
        one.display();
        two.display();
        one.deposit(134123.45);
        one.display();
        two.withdraw(673.332);
        two.display();
    }
}