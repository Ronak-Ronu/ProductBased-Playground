package javaDay3;



class A
{
	int num;
	String name;
	
//	private A(String name)
//	{
//		
//	}
	A(String name){
		
		this.name=name;
		System.out.println("A : "+this.name);
	}
	
	void displayA()
	{
		System.out.println("A :"+this.num);
	}
	
}


 class B extends A{
	B()
	{
		super("Ron");
		A a1=new A("Jim");
	}
	
	
	void displayB()
	{
		System.out.println("num :"+super.num);
	}
	
}




public class superClass {
	public static void main(String args[])
	{		
		B  b1=new B();
		b1.displayB();
		
	}
}
