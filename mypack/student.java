package mypack;

public class student{
    int i_age;
    String s_name;
    public student(int age,String name){
        this.s_name=name;
        this.i_age=age;
    }
    public void display(){
        System.out.println("Name: "+s_name);
        System.out.println("Age: "+i_age);
    }
}
