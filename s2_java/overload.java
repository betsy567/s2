import java.util.*;
public class areas {
    void area(int side){
        System.out.println("Area of square :" + side * side);
    }
    void area(float radius){
        double pi=Math.pi;
        System.out.println("The area of circle:" + pi*radius*radius);

    }
    
}
class overload{
    public static void main(String [] args){
        square s=new square();
        s.area(5);
        circle c=new circle();
        c.area(5.0f);
    }
}

