import java .util.Scanner;
class Employee{
    int eNo;
    String eName;
    float eSalary;

    Employee(int eno,String ename,float esalary){
        eNo=eno;
        eName=ename;
        eSalary=esalary;
    }
    void display(){
        System.out.println("Employee Number:"+eNo);
        System.out.println("Employee Name:"+eName);
        System.out.println("Employee Salary"+eSalary);    
    }
}
public class cEmployee{
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter number of employees:");
        int n=sc.nextInt();
        Employee emp[]=new Employee[n];
        for (int i=0;i<n;i++){
            System.out.println("Enter thr details "+(i+1));
            System.out.println("Enter employee number:");
            int eno=sc.nextInt();
            sc.nextLine();
            System.out.println("Enter employee name: ");
            String ename=sc.nextLine();
            System.out.println("Enter employee salary: ");
            float esalary=sc.nextFloat();

            emp[i]=new Employee(eno,ename,esalary);    
        }
        System.out.println("Enter employee number to search: ");
        int searchno=sc.nextInt();
        boolean f=false;
        for (int i=0;i<n;i++){
            if(emp[i].eNo==searchno){
                f=true;
                emp[i].display();
                break;
            }
        }
        if(!f){
            System.out.println("Not found");
        }
    }
}