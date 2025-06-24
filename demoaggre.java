
class student{
    int age;
    String Name;
    address adr;
    college col;
    student(int age,String Name,address adr){
        this.age = age;
        this.Name = Name;
        this.adr = adr;
    }
    public void displayStudent(){
        System.out.println("Name: "+Name);
        System.out.println("Age: "+age);
        adr.displayAddress();
    }
}
public class demoaggre {
    public static void main(String args[]){
    address adr = new address(77,"Blore");
    student s = new student(10,"Ketone",adr);
    s.displayStudent();
    }
    
}
