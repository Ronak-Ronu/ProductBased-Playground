package javaday2;
class Student1{
    private int id;
    private String name;
    
    public Student1(int id,String name) {
            this.id=id;
            this.name=name;
    }
    
    public void getdata()
    {
        System.out.printf("id: %d | name: %s\n",id,name);

    }
}


public class Myclass {
	 public static void main(String[] args) {
		 // reference -> str1 compiler time
	        Student1 st1=new Student1(101, "Ron");  // objects run time entity
	        Student1 st2=new Student1(102, "Sam");
	        
	        st1.getdata();
	        st2.getdata();
	        
	    }
}







