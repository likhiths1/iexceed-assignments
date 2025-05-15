import java.io.*;

class FileOutputStream1 {
    public static void main(String[] args) throws Exception
    {
        String data = "Hello, World!";

        FileOutputStream fos = new FileOutputStream("outputfos.txt");
                 
        byte[] dataBytes = data.getBytes();
        fos.write(dataBytes);

        System.out.println("Data successfully written to the file.");
        }   
    }
