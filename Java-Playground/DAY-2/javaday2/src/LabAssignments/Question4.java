package LabAssignments;
//Write a Java program to create a class called "Circle" with a radius attribute. You can
//access and modify this attribute. Calculate the area and circumference of the circle.

class Circle
{
	double radius;

	Circle(double r)
	{
		this.radius=r;
		
	}
	void area()
	{
		System.out.printf("Area : %.2f\n",3.14*this.radius*this.radius);
	}
	void circumstance()
	{
		System.out.printf("Circumstance : %.2f\n",2*3.14*this.radius);
	}
}
public class Question4 {

	public static void main(String[] args) {
		Circle c1=new Circle(10);
		c1.area();
		c1.circumstance();

	}

}
