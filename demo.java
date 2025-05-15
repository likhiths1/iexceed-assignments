@FunctionalInterface
interface example
{
	public void display();
}
class demo 
{	public static void main(String args[])
	{	
		new example(){
			public void display()
			{
				System.out.println("functional interface");
			}}.display();
	}
}
