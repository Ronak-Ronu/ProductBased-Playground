package LabAssignment3;

class BankAccount
{
	void deposit()
	{
		
	}
	void withdraw()
	{
		
	}
}

class SavingsAccount extends BankAccount
{
	
	@Override
	void withdraw()
	{
		System.out.println("Account balance below one hundred");
	}
	
}


public class Question5 {

	public static void main(String[] args) {

		SavingsAccount s1 = new SavingsAccount();
		int withdrawAmount=80;
	
		if(withdrawAmount<100)
		{
			s1.withdraw();
		}
		
		
	}

}
