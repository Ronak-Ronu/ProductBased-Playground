package javaday2;


//methods
//- instance/object methods
//- static/object methods

public class MethodClass {
	
	void method1()
	{
		System.err.println("instance method");
	}
	
	static void method2()
	{
		System.out.println("Static method");
	}
	
	public static void main(String[] args) {
			MethodClass obj=new MethodClass();
			obj.method1();
			method2();
			
	}

}
