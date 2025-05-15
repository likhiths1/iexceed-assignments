import java.io.DataInputStream;

class sample{
    sample(){
        try{
            DataInputStream dn = new DataInputStream(System.in);
            System.out.println("Welcome to architechture of JAVA");
            int red = Integer.valueOf(dn.readLine()).intValue();
            System.out.println(red);
        }catch(Exception e){}
    }
}
public class demos{
    public static void main(String[] args) {
        new sample();
    }
}