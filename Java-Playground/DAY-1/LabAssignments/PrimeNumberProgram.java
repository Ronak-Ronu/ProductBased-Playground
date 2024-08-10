import java.util.Scanner;
class PrimeNumberProgram{
	public static boolean primenumber(int n)
	{	
		if(n<=1) return false;
		for(int i=2;i<=n/2;i++)
		{
			if(n%i==0) return false;
		}
		return true;
	}	
		
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();	
		boolean result=primenumber(n);
		System.out.println(result?"Prime Number":"Not Prime Number");
	}
}