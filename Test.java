interface Flyable {
    default void fly(){
        System.out.println("i can fly");
    }

}
class Eagle implements Flyable {
    public void fly(){
        System.out.println("i can fly higher");
    }
}

class Duck implements Flyable {}

public class Test {
    public static void main(String[] args){
        Flyable duck = new Duck();
        Flyable eagle = new Eagle();
        duck.fly();
        eagle.fly();

    }
}