class sample{
	int age;		
	String name;		//instance variables
	static int exp;							
	sample(int age,String name,int exp){
		this.age=age;
		this.name=name;
		this.exp=exp;
	}
	void displayStudent()
	{
		System.out.println("Age="+age);
		System.out.println("Name="+name);
		System.out.println("Experience="+exp);
	}
}

class instancevariable{
	public static void main(String abc[])
	{
		sample obj = new sample(10,"name",1);
		sample obj1 = new sample(10,"ket",2);
		obj.displayStudent();
		obj1.displayStudent();
		
	}
}
		
		