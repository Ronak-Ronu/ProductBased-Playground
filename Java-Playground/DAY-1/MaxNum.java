import java.util.Scanner;
public class MaxMinNum{
 	public static void main(String args[]){
		Scanner sc=new Scanner(System.in);
		int num1=sc.nextInt();
		int num2=sc.nextInt();	
		System.out.println(num1>num2?"Max: "+num1:"Max: "+num2);
		System.out.println(num1<num2?"Min: "+num1:"Min: "+num2);
	}		
}