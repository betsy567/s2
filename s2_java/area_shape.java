import java.io.*;
class areas{
    double PI=Math.PI;
    void Area(float side){
        float A=side*side;
        System.out.println("Area of square: " +A);
    }
    void Area(double radius){
        double A=PI*radius*radius;
        System.out.println("Area of circle: " +A);
    }
    void Area(int a,int b){
        int A=a*b;
        System.out.println("Area of rectangle: " +A);
    }
}
public class area_shape{
    public static void main(String[] args){
        areas obj=new areas();
        obj.Area(5.5);
        obj.Area(3);
        obj.Area(4,5);
    }
}