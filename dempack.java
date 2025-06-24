import mypack.student;
class teacher extends student{
    String s_name,s_desig;
    teacher(String name,String desig){
        super(10,"Ketone");
        super.display();
        this.s_name=name;
        this.s_desig=desig;
    }
    public void displayTeacher(){
        System.out.println("Desig: "+s_desig);
    }
}
public class dempack{
    public static void main(String[] args) {
       new teacher("Hello","Trainee").displayTeacher(); 
    }
}