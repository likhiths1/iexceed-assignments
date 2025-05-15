class  A
{
    A()
    {
        System.out.println("A super");
    }
}
class student  extends  A{
    String name="sivam";
    int age=23;
    String city="Salem";
 
    student()
    {
        System.out.println(name+""+age+city);
    }
}
 
class school extends student
{
   String sname="Govt HSC";
   school()
    {
        //this.displaySchool();;
        System.out.println("Name of the school"+sname);
    }
    public void displaySchool(){
        System.out.println("Name of the school"+sname);
    }
}
 
class demosupermethod
 {
      public static void main(String asd[])
      {
        new school().displaySchool();
       
      }
 }
 
