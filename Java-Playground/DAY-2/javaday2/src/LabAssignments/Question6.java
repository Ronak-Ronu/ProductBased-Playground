package LabAssignments;
import java.util.Scanner;

//Write a Java program to create a class called "Employee" with a name, job title, and
//salary attributes, and methods to calculate and update salary

//Basic Salary = Gross Salary - (All the allowances + benefits + bonuses, etc.)


class Employee
{
	String name;
	String title;
	double salary;
	double grossSalary;
	double TotalAllowances;
	double benefits;
	double bonuses;
	
	
	void calculateSalary()
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Gross Salary,Total Allowance,Benefits and bonus");
		this.grossSalary= sc.nextDouble();
		this.TotalAllowances=sc.nextDouble();
		this.benefits=sc.nextDouble();
		this.bonuses=sc.nextDouble();
		
		this.salary=this.grossSalary-(this.TotalAllowances+this.benefits+this.bonuses);
		System.out.println("Salary : "+this.salary);
		
			
	}
	
	
}


public class Question6 {

	public static void main(String[] args) {
		Employee e1=new Employee();
		e1.calculateSalary();

	}

}
