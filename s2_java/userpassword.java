import java.util.Scanner;
class passwordException extends RuntimeException{
    passwordException(String s){
        super(s);
    }
}
public class userpassword{
    public static void main(String []args){
        String user="admin";
        String password="admin";
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter username:");
        String uname=sc.nextLine();
        System.out.println("Enter password:");
        String pswd=sc.nextLine();
        if(!uname.equals(user)||!pswd.equals(password)){
            throw new passwordException("Invalid username and and password");
        }
        else{
            System.out.println("Login Successfully");
        }
    }
}