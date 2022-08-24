
class box {
    float length;
    float breadth;
    float height;

    box() { // default constructor

        length = 0;
        breadth = 0;
        height = 0;
        System.out.println("the value of const - : ");

    }

    box(float l, float b, float h) { // parametrized constructor

        length = l;
        breadth = b;
        height = h;

        System.out.println("the value of const - : ");

    }

    void volume() {
        System.out.println("volume is :" + length * breadth * height);
    }
}

class woodbox extends box {
    float thick;

    woodbox(float l, float b, float h, float t) {
        length = l;
        breadth = b;
        height = h;
        thick = t;

        System.out.println("the value of wood-box const - : ");
    }

    void showthick() {
        System.out.println("the thickness of wood-box  - : " + thick);

    }
}

class boxinh {
    public static void main(String[] args) {
        box ob1 = new box(3, 4, 5);
        ob1.volume();

        woodbox ob2 = new woodbox(6, 8, 6, 9);

        ob2.volume();
        ob2.showthick();

    }
}
