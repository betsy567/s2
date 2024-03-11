import java.util.Scanner;
import java.util.Arrays;

class Arrsearch {
    int a[];
    int x, n;

    public void read() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter no: of elements:");
        n = sc.nextInt();
        a = new int[n];
        System.out.println("Enter elements:");
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        System.out.println("Enter element you want to search:");
        x = sc.nextInt();
    }

    public void display() {
        System.out.println("The array:" + Arrays.toString(a));
    }

    public static int find(int a[], int x, int n) {
        for (int i = 0; i < n; i++) {
            if (a[i] == x) {
                return i;
            }
        }
        return -1;
    }
}

public class ss {
    public static void main(String[] args) {
        Arrsearch arr = new Arrsearch();
        arr.read();
        arr.display();
        int index = Arrsearch.find(arr.a, arr.x, arr.n);
        if (index != -1)
            System.out.println("Element found at index " + index);
        else
            System.out.println("Element not found");
    }
}
