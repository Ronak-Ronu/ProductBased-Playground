package javaday2;



// variables
// -local -> int localvar=100;
// -instance/onject -> int a=10;
// -static/class -> static int b=20

public class VarClass {
	int a=10;
	static int b=20;
	public static void main(String[] args) {
		int localvar=100;
		System.out.println("local variable : "+localvar);
		VarClass obj=new VarClass();
		System.out.println("instance variable : "+obj.a);
		System.out.println("static variable : "+b);
	}
	
}
