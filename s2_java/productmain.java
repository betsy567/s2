import java.util.Scanner;

class product {
    int pcode;
    String pname; 
    int price;

    public void readdata() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter code:");
        this.pcode = sc.nextInt();
        sc.nextLine(); 
        System.out.println("Enter name:");
        this.pname = sc.nextLine();
        System.out.println("Enter price:");
        this.price = sc.nextInt();
    }

    public void display() {
        System.out.println(pcode + "\t\t" + pname + "\t\t" + price); 
    }
    public int getPrice() {
        return price;
    }

    public static void lowest(int p1Price, int p2Price, int p3Price) {
        if (p1Price < p2Price && p1Price < p3Price) {
            System.out.println("Product 1 is of the lowest price");
        } else if (p2Price < p1Price && p2Price < p3Price) {
            System.out.println("Product 2 is of the lowest price");
        } else {
            System.out.println("Product 3 is of the lowest price");
        }
    }
}

public class productmain {
    public static void main(String args[]) {
        product p1 = new product();
        product p2 = new product();
        product p3 = new product();
        p1.readdata();
        p2.readdata();
        p3.readdata();
        System.out.println("Product Information\n");
        p1.display();
        p2.display();
        p3.display();
        product.lowest(p1.getPrice(), p2.getPrice(), p3.getPrice()); 
    }
}
