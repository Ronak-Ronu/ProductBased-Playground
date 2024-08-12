package LabAssignments;
import java.util.*;
//Write a Java program to create a class called "Book" with attributes for title, author,
//and ISBN, and methods to add 

import java.util.Scanner;

class Book
{
	String title;
	String author;
	int ISGN;
	Book()
	{
		this.title="Title";
		this.author="Author";
		this.ISGN=111111;
	}
	void addbook()
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Book name: ");
		this.title=sc.next();
		System.out.println("Enter Author name: ");
		this.author=sc.next();
		System.out.println("Enter ISBN : ");
		this.ISGN=sc.nextInt();
	}
	void displayBook()
	{
		System.out.println("-------------------------------------");
			
		System.out.printf("Title : %s\nAuthor: %s\nISBN :%d\n ",this.title,this.author,this.ISGN);
		
		System.out.println("-------------------------------------");
	}
	
}
public class Question5 {
	Book b1=new Book();
	
	
}
