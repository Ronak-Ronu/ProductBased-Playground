package javaday2;

// Polymorphism
//1) overloading / compiler time polymorphism
//	a) method overloading
// 	b) constructor overloading
//2) overriding / Run time polymorphism
//	a) method overriding

public class PolyClass {
		//	constructor overloading
		String name;
		
		PolyClass()
		{
			System.err.println("Empty constructor");
		}
		
		
		PolyClass(String name)
		{
			this.name=name;
			System.out.println("Parameterize constructor : "+this.name);
		}
		
		
		
		//	method overloading
		static void add(int a,int b)
		{
			System.out.print("two addition: ");
			System.out.println(a+b);
		}
		
		
		
		static void add(int a,int b,int c)
		{
			System.out.print("three addition: ");
			System.out.println(a+b+c);
		}


		static void add(int ...num)
		{
			int sum=0;
			for(int n:num)
			{
				sum+=n;
			}
			System.out.println(sum);
		}
		
		//	end of method overloadin

		public static void main(String args[]) {
				PolyClass p1=new PolyClass();
				PolyClass p2=new PolyClass("Ronak");
				
				add(1,2);
				add(1,2,3);
				add(1,2,3,4,5,6,7,8,9,10);
		}
}
