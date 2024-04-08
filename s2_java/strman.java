import java.util.*;
public class strman{
	public static void main(String[]args){
	Scanner sc=new Scanner(System.in);
	System.out.println("Enter a string:");
	String str=sc.nextLine();
	System.out.println(" Lower to Uppercase: " +str.toUpperCase());
	System.out.println("To lowercase: " +str.toLowerCase());
	System.out.println("Length of the string: " +str.length());
	System.out.println("String after trim: " +str.trim());
	}
}
	