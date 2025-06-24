// Java Program to Demonstrate the working of
// FileInputStream Class
import java.io.*;

public class FileInputStream1 {

    public static void main(String args[])
    {
        try {
            FileInputStream fi = new FileInputStream("outputfos.txt");
            int ch;
            while ((ch = fi.read()) != -1) {
                System.out.print((char)ch+" ");
            }
            fi.close();
        }
        catch (FileNotFoundException e) {
            System.out.println(
                "File not found: Ensure the file exists.");
        }
        catch (IOException e) {
            System.out.println(
                "An error occurred while reading the file.");
        }
    }
}
