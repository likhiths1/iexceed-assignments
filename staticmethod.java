class staticmethod
{
      int x;
      static int y;
      public void display()
	{
	  System.out.println("non static method");

	  x=10;y=20;

	  System.out.println(x+y);

	}
      static public void display1()

	{
	  System.out.println("Static method");
	}
	
      public static void main(String asd[])

	{

	  new demostaticmethod().display();

	  display1();

	}

}
 