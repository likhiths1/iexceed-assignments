import java.io.*;
class student implements Serializable{
    String name,city;
    int rollno;
    student(String name,String city,int rollno){
        this.name=name;
        this.city=city;
        this.rollno=rollno;
    }
}
public class ObjectOutputStream1{
    public static void main(String[] args) throws Exception{
       student s1 = new student("Likhith","Bengaluru",12);
       FileOutputStream fos = new FileOutputStream("outputoos.txt");
       ObjectOutputStream oos = new ObjectOutputStream(fos);
       oos.writeObject(s1);
       oos.close();

       ObjectInputStream ois = new ObjectInputStream(new FileInputStream("outputoos.txt"));
       student si = (student)ois.readObject();
       System.out.println(si.name+" resides in "+si.city);
    }
}
