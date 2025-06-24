interface one{
    public void display();
}
interface two extends one{
    public void display1();
}
class demo implements one,two{
    public void display(){System.out.println("display..");}
    public void display1(){System.out.println("display1..");}
}
public class demointerface1 {
    public static void main(String[] args) {
        new demo().display();
        new demo().display1();
    }
}
