package javaDay3;


// single inheritance
// parent or super class
class Animal
{
	void behavior()
	{
		System.out.println("Animals walk,eat for survival ,catch prey,make sounds and lives in pride");
	}
}


class Lion extends Animal
{
	void strength()
	{
		System.out.println("King of the forest.");
	}
}

// hierarical inheritance
class Dear extends Animal
{
	void strength()
	{
		System.out.println("Focused, highly sharp sense,has hooves and eats plants around the forest");
	}
}



// multi level inheritance
class Katanga extends Lion
{
	void speices()
	{
		System.out.println("Katanga lion (Southwest African lion)");
	}
}



public class InhericanceClass {

	public static void main(String args[])
	{
		Lion l1= new Lion();
		l1.behavior();
		l1.strength();
		
		
		
		Katanga k1=new Katanga();
		k1.strength();
		k1.speices();
		
		Dear d1=new Dear();
		d1.strength();
				
		
		
	}
	
}
