import java.util.Scanner;
class Arrsearch {
    int a[];
    int x,n;
    public void read(){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter no: of elements:");
        n=sc.nextInt();
        System.out.println("Enter elements:");
        for(int i=0;i<n;i++){
            a[i]=sc.nextInt();
        }
        System.out.println("Enter element you want to search:");
        int x=sc.nextInt();
    }
    public void display(){
        System.out.println("The array:" +a[]);
    }
    public static void find(int a[],int x,int n){
        for(int i=0;i<n;i++){
            if(a[i]==x){
                return i;
            }
            else{
                return -1;
            }
        }
    }
}
public class search{
    public static void main(String []args){
        int[] a=new int[n];
        a.read();
        a.display();
        System.out.println("Element found at"+i);
        Arrsearch.find(int x);
    }
}

    

