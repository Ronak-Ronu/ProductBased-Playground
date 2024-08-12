class Student{
    private int id;
    private String name;
    public Student(int id,String name) {
            this.id=id;
            this.name=name;
    }
    public void getdata()
    {
        System.out.println("id: "+id);
        System.out.println("name: "+name);

    }
    
}
class ObjectProgram{
    public static void main(String[] args) {
        Student st1=new Student(101, "ron");
        st1.getdata();
    }

}