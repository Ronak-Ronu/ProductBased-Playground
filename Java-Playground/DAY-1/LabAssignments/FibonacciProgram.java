import java.util.Scanner;
class FibonacciProgram{
	public static void fibonacci(int n)
	{	
		 int num1=0,num2=1,num3,i,count=n;  
 		System.out.print(num1+" "+num2);
 		for(i=2;i<count;++i)  
		 {
 		 num3=num1+num2;
 		 System.out.print(" "+num3);
 		 num1=num2;
 		 num2=num3;
 		}
	}	
		
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();	
		fibonacci(n);
	}
}