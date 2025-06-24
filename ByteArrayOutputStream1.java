import java.io.*;
public class ByteArrayOutputStream1{
    public static void main(String[] args) throws Exception{
        FileOutputStream fos1 = new FileOutputStream("sample.txt");
        FileOutputStream fos2 = new FileOutputStream("sample2.txt");
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        String str = "Hello this is the example of BAOS";

        byte[] b_str = str.getBytes();

        bos.write(b_str);
        bos.writeTo(fos1);
        bos.writeTo(fos2);

        bos.flush();
        bos.close();
    }

}