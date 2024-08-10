import java.util.Scanner;
public class VarClass{
 	public static void main(String args[]){
		int studentId;
		String studentName;
		float studentMark;

		Scanner sc=new Scanner(System.in);

		studentId=sc.nextInt();
		studentName=sc.next();
		studentMark=sc.nextFloat();

		System.out.println("ID: "+studentId);
		System.out.println("Name: "+studentName);	
		System.out.println("Mark: "+studentMark);		
	}		
}