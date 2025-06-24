class A
 {
    String name;
      A()
      {
       
        System.out.println(name);
      }
      A(int x,int y)
      {
        this();
        System.out.println(x+y);
      }
 }
 
 class B extends A
  {
     B()
     {
       
        super(10,10);
       
        System.out.println("Derived class cons");
     }
  }
 
  class demoinheritance2
   {
      public static void main(String asd[])
      {
        new B(); 
      }
   }
 
