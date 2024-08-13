package LabAssignment3;

class Person
{
	
	void getFirstName()
	{
	}
	void getLastName()
	{
	}
}

class Employee1 extends Person
{
	String fname1;
	int id;
	String title;
	

	void getEmployeeId(String name,int id,String title)
	{
		this.fname1=name;
		this.id=id;
		this.title=title;
		System.out.println("ID : "+this.id);
	}
	@Override
	void getLastName()
	{
		System.out.println("Last name : "+this.fname1);
		System.out.println("Job title: "+this.title);
	}
	
}


public class Question7 {

	public static void main(String[] args) {
			Employee1 e1=new Employee1();
			e1.getEmployeeId("Ron",101,"CEO");
			e1.getLastName();
	}

}
