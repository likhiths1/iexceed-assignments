class customer
{
   int amt=10000;
   synchronized public void withDraw(int amt)
	{
	  System.out.println("Going to withdraw");
 
	  if(this.amt<amt)
		{
		   System.out.println("less balance");
			try{
		   		wait();
			  }catch(InterruptedException d){}
		}
		this.amt-=amt;
	    System.out.println("Withdrawed"+this.amt);
	}
 
 
   synchronized  public void deposite(int amt)
	{
	   System.out.println("Going to Deposite");
	   this.amt+=amt;
	   System.out.println("Deposite done");
 
	   notify();
	}
}
 
class demointerthread
{
    public static void  main(String das[])
	{
		customer c=new customer();
		new Thread()
		{	
	   	   public void run()
		    {
			 c.withDraw(12000);
		     }
 
		}.start();
		new Thread(){
		    public void run()
			{
			  c.deposite(10000);
			}	
		}.start();
 
}
}
