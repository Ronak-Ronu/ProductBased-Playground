package LabAssignment3;


class Shape
{
	void getArea()
	{
		System.out.println("Area of Shapes");
	}
}
class Rectangle extends Shape
{
	double height;
	double width;
	Rectangle(double h,double w)
	{
		this.height=h;
		this.width=w;
	}
	@Override
	void getArea()
	{
		System.out.println("Area of rectangle : "+(this.height*this.width));
	}
}

public class Question3 {

	public static void main(String[] args) {
			Rectangle r1= new Rectangle(10,10);
			r1.getArea();
	}

}
