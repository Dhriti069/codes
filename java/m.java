import java.lang.*;

public class Point_3D {
    int x;
    int y;
    int z;

    Point_3D(int a, int b, int c) {
        x = a;
        y = b;
        z = c;
    }

    Point_3D() {
        x = 0;
        y = 0;
        z = 0;
    }

    Point_3D(Point_3D ob) {
        x = ob.x;
        y = ob.y;
        z = ob.z;
    }

    void distance(Point_3D ob) {
        double d = 0;
        d = Math.sqrt((ob.x * ob.x) + (ob.y * ob.y) + (ob.z * ob.z));
        System.out.println("the distance from origin is: " + d);
    }

    void distance(Point_3D ob1, Point_3D ob2) {
        double d = 0;
        double a = ob1.x - ob2.x;
        double b = ob1.y - ob2.y;
        double c = ob1.z - ob2.z;
        d = Math.sqrt((a * a) + (b * b) + (c));
        System.out.println("the distance from origin is: " + d);

    }
}

class m {
    public static void main(String[] args) {
        Point_3D ob1 = new Point();
        Point_3D ob2 = new Point(7, 6, 3);
        Point_3D ob3 = new Point(4, 5, 6);
        Point_3D ob4 = new Point(ob3);
        ob2.distance(ob2);
        ob3.distance(ob3, ob2);

    }
}
