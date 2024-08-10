import java.util.Scanner;
class PalindromeProgram{
	public static boolean palindrome(String str)
	{	
		StringBuilder sb=new StringBuilder(str);
		return str.equals(sb.reverse().toString());		
	}	
		
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		String str=sc.next();	
		boolean result=palindrome(str);
		System.out.println(result?"Palindrome":"Not Palindrome");
	}
}