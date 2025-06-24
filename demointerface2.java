interface school{
    String name = "Venkat";
    int id = 1;
    public void display(int a,int b);
}

class demo implements school{
    @Override
    public void display(int a,int b){System.out.println("Name: "+name+" ID: "+id);}

}
public class demointerface2 {
    public static void main(String[] args) {
        new demo().display(1,2);
    }
}
