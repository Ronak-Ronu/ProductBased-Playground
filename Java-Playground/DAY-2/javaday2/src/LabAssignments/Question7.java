package LabAssignments;
import java.util.*;


//Write a Java program to create a class called "Bank" with a collection of accounts and
//methods to add and remove accounts, and to deposit and withdraw money. Also define a
//class called "Account" to maintain account details of a particular customer.

class Account
{
	public String username;
	public int accountID;
	public double TotalAmount;

	public  void displayAccount()
	{
		System.out.println("Account Details:"+this.username+" | "+this.accountID+" | "+this.TotalAmount+"\n");
	}
	public double getamount()
	{
		return this.TotalAmount;
	}
	
}


class Bank extends Account
{
	double depositamount;
	double WithdrawAmount;
		
		void addAccount()
		{
			System.out.println("Enter Account details: (customername,accountid,totalamout)");
			Scanner sc=new Scanner(System.in);
			super.username=sc.next();
			super.accountID=sc.nextInt();
			super.TotalAmount=sc.nextDouble();
			System.out.println("___________________________________");
			displayAccount();
		}
		void removeAccount()
		{
			super.username="";
			super.accountID="";
			super.TotalAmount=0000;
			System.out.println("Account removed");
			System.out.println("___________________________________");
		}
		void deposit()
		{
			double amount = getamount();
			System.out.println("Current Amount : "+amount);
			System.out.println("Enter amount to deposit");
			
			Scanner sc=new Scanner(System.in);
			this.depositamount=sc.nextDouble();
			
			super.TotalAmount+=this.depositamount;
			System.out.println("Current Amount : "+super.TotalAmount);

		}
		void withdraw()
		{
			double amount = getamount();
			System.out.println("Current Amount : "+amount);
			System.out.println("Enter amount to Withdraw");
			Scanner sc=new Scanner(System.in);
			this.WithdrawAmount=sc.nextDouble();
			if(this.WithdrawAmount>amount)
			{
				System.out.println("Invalid Amount");
			}
			super.TotalAmount-=this.WithdrawAmount;
			
			System.out.println("Current Amount : "+super.TotalAmount);


		}


}

public class Question7 {

	public static void main(String[] args) {
		Bank b1=new Bank();
		b1.addAccount();
		b1.deposit();
		b1.displayAccount();
		b1.withdraw();
		b1.displayAccount();
		b1.removeAccount();
		

	}

}
