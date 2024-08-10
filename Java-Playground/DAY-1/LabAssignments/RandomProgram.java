import java.util.Scanner;
class RandomProgram{
	public static int generate()
	{	
		
		return (int)(Math.random()*100);	
	}	
		
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("HIGHER LOWER | 10 chances");
		
		int result=generate();
		for(int i=0;i<10;i++)
		{
			int n=sc.nextInt();
			if(n>result)
			{
				System.out.println("HIGHER");
			
			}
			else if(n<result){
				System.out.println("LOWER ");
			
			}
			else{
				System.out.println("great");
				break;
			}	
		}
				

		
		System.out.println("-------------"+result);

		
	}
}