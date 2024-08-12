package LabAssignments;
//Write a Java program to create a class called "Dog" with a name and breed attribute.
//Create two instances of the "Dog" class, set their attributes using the constructor and
//modify the attributes using the setter methods and print the updated values
class Dog
{
	String name;
	String breed;
	Dog(String name,String breed)
	{
		this.name=name;
		this.breed=breed;
	}
	void setter(String name,String breed)
	{
		this.name=name;
		this.breed=breed;
	}
	
	void getter()
	{
		System.out.printf("Name : %s \nbreed: %s\n----------------------\n",this.name,this.breed);
	}
	
}


public class Question2 {

	public static void main(String[] args) {
		Dog d1=new Dog("Pudding","Poodle");
		Dog d2=new Dog("Maria","Husky");
		d1.getter();
		d2.getter();
		d1.setter("Perry", "Poodle");
		d1.getter();
	}

}
