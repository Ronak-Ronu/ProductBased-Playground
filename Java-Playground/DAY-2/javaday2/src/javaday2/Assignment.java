package javaday2;
import java.util.Scanner;


class Student{
	int registrationNumber;
	String studentName;
	
	int[] marks=new int[5];
	
	Student(int regno,String studentname)
	{
		this.registrationNumber=regno;
		this.studentName=studentname;
		
	}
	
	void getMarks()
	{
		System.out.println("_________________________________________________");
		System.out.println("Registration number : "+this.registrationNumber+"                      |");
		System.out.println("Student Name : "+this.studentName+"                              |");
		System.out.println("________________________________________________|");
		
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter 5 subject marks");
		for(int i=0;i<5;i++)
		{
			this.marks[i]=sc.nextInt();
		}
	}
	void displayGrade()
	{
		
		
		
		int Total=0;
		
		for(int i=0;i<this.marks.length;i++)
		{
			Total+=this.marks[i];
		}
		
		
		System.out.println("Total Marks : "+Total+"/500");
		System.out.println("Average Marks : "+Total/5);
		
		
		if(Total>450)
		{
			System.out.println("Grade : A");
		}
		else if(Total>350 && Total<450)
		{
			System.out.println("Grade :  B");
		}
		else if(Total>250 && Total<350)
		{
			System.out.println("Grade :  C");
		}
		else if(Total>150 && Total<250)
		{
			System.out.println("Grade :  D");
		}
		else {
			System.err.println("Grade :  F");
		}
	}
	
	

	
}


public class Assignment {

	public static void main(String[] args) {
			Student s1=new Student(7142,"Ron");
			s1.getMarks();
			s1.displayGrade();
			
		
	}

}
