class simple{
	
	void display(){
		System.out.println("Display Method");
	}
	int display1(int a,int b){
		return a+b;
	}
	simple(int age,String name){
		System.out.println("Age="+age+"\tName="+name);
	}
}


class sample{
	public static void main(String args[])
	{
	 	int x = 10;
	 	System.out.println(x);
	 	simple obj = new simple(20,"Sharika");
		obj.display();
	 	System.out.println(obj.display1(10,11));
		new simple(10,"Sharika");
	}
}