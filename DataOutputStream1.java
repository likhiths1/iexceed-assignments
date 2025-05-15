import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class DataOutputStream1 {
    public static void main(String[] args) throws Exception{
        DataOutputStream dos = new DataOutputStream(new FileOutputStream("outputdos.txt"));
        dos.writeInt(10);
        dos.close();

        DataInputStream dis = new DataInputStream(new FileInputStream("outputdos.txt"));
        System.out.println(dis.readInt());
        dis.close();
    }
}
