package LabAssignment3;

class Animal
{
	void move()
	{}
}
class Cheetah extends Animal
{
	@Override
	void move()
	{
		System.out.println("cheetah is running");
	}
}


public class Question6 {

	public static void main(String[] args) {
		Cheetah c1= new Cheetah();
		c1.move();
	}

}
