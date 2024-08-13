package LabAssignment3;

class Vehicle
{
	void drive()
	{
		
	}
}

class Car extends Vehicle
{
	@Override
	void drive()
	{
		System.out.println("Reparing a Car");
	}
}
public class Question2 {

	public static void main(String[] args) {
		Car c1=new Car();
		c1.drive();

	}

}
