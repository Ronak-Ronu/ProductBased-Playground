import java.util.Scanner;
public class ArrClass{
 	public static void main(String args[]){
		int[] arr=new int[5];
		Scanner sc=new Scanner(System.in);
		for(int i=0;i<arr.length;i++)
		{
			arr[i]=sc.nextInt();
		}
		System.out.print("[ ");
		for(int i=0;i<arr.length;i++)
		{
			System.out.print(arr[i]+" ");		
		}
		System.out.print("]");

	}		
}