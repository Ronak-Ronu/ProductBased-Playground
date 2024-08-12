package LabAssignments;
//Write a Java program to create a class called "Person" with a name and age attribute.
//Create two instances of the "Person" class, set their attributes using the constructor, and
//print their name and age

class Person
{
	String name;
	int age;
	Person(String name,int age)
	{
		this.name=name;
		this.age=age;
	}
	void displayPerson()
	{
		System.out.printf("Name : %s \nAge: %d\n----------------------\n",this.name,this.age);
	}
	
}



public class Question1 {

	public static void main(String[] args) {
		Person p1=new Person("Ron",24);
		Person p2=new Person("Jim",22);
		p1.displayPerson();
		p2.displayPerson();

	}

}
