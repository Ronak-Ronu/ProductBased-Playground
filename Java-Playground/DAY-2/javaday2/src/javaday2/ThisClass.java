package javaday2;

public class ThisClass {
	
	String name;
	ThisClass(String name)
	{
		this.name=name;
		this.getdata();
	}
	ThisClass()
	{
		this("No Name Provided.");
	
	}
	void getdata()
	{
		System.out.println("Name :"+name);
	}
	
	public static void main(String[] args) {
		
		ThisClass c1=new ThisClass("Ron");
		ThisClass c2=new ThisClass();

	}

}

