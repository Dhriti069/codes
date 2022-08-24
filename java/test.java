abstract class shape {
    abstract void area();
}

class circle extends shape {
    int radius;

    circle(int r) {
        radius = r;
    }

    void area() {
        double a = 3.141 * radius * radius;
        System.out.println("Area of circle= " + a);
    }
}

class square extends shape {
    int side;

    square(int s) {
        side = s;
    }

    void area() {
        System.out.println("area of square = " + side * side);
    }
}

class sphere extends shape {
    int r;

    sphere(int m) {
        r = m;

    }

    void area() {
        double a = 4 * 3.14 * r * r;
        System.out.println("surface area of shpere=" + a);
    }
}

public class test {
    public static void main(String[] args) {
        square sq = new square(5);
        sq.area();
        circle c = new circle(4);
        c.area();
        sphere sp = new sphere(3);
        sp.area();
    }
}
