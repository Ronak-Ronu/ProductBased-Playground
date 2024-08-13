package LabAssignment3;

class Animal
{
	void makesound()
	{
		System.out.println("Animal makes sound");
	}
}
class Cat extends Animal
{
	@Override
	void makesound()
	{
		System.out.println("cat : Meow");
	}
}
public class Question1 {

	public static void main(String[] args) {
		Cat c1=new Cat();
		c1.makesound();

	}

}
