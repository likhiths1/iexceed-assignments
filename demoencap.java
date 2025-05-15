class student
{
   private String name;
   private int roll;
   private String dept;
 
   public void setName(String name)
   {
    this.name=name;
   }
   public void setRoll(int roll)
   {
    this.roll=roll;
   }
 
   public void setDept(String dept)
   {
    this.dept=dept;
   }
 
   public void getName()
   {
    System.out.println("Name"+name);
 
   }
   public void getRoll()
   {
    System.out.println("Roll"+roll);
   }
   public String getDept()
   {
    return dept;
   }
}
 
 
class demoencap
 {
    public static void main(String[] args) {
        student obj=new student();
        obj.setName("Kumar");
        obj.setRoll(1);
        obj.setDept("CSE");
 
        obj.getName();
        obj.getRoll();
        System.out.println(obj.getDept());
    }
 } 

