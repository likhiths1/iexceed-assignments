class student{
    public void displayStudent(){

    }
}
class college{
    public void displayStudent(){

    }
}
class sample extends college,student{
}
public class demomlinher {
    public static void main(String[] args) {
        new sample().displayStudent();;
    }    
}
