
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

public class BufferedOutputStream1 {
    public static void main(String[] args)
    {
        String s
            = "This is an example of BufferedOutputStream.";

        try (FileOutputStream fileOutputStream
             = new FileOutputStream("output.txt");
             BufferedOutputStream bufferedOutputStream
             = new BufferedOutputStream(fileOutputStream)) {
            bufferedOutputStream.write(s.getBytes());

            System.out.println(
                "Data written to the file successfully.");
        }
        catch (Exception e) {}
        }
    }
