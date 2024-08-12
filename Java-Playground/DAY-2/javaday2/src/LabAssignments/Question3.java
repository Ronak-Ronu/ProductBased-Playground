package LabAssignments;
//Write a Java program to create a class called "Rectangle" with width and height
//attributes. Calculate the area and perimeter of the rectangle.

class Rectangle
{
	double height;
	double width;
	Rectangle(double h,double w)
	{
		this.height=h;
		this.width=w;
	}
	void area()
	{
		System.out.printf("Area : %.2f\n",height*width);
	}
	void perimeter()
	{
		System.out.printf("Perimeter : %.2f\n",2*(height+width));
	}
}
public class Question3 {

	public static void main(String[] args) {
		Rectangle r1= new Rectangle(10,20);
		r1.area();
		r1.perimeter();

	}

}
