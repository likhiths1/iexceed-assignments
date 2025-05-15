class sample{
	static{
		System.out.println("Static block is called"); //static block priority:1
	}
	sample(){
		System.out.println("Constructor is called"); //constructor block priority:3
	}
	{
		System.out.println("Instance block is called"); // instance block priority:2
	}
		
}
class instanceblock{
	public static void main(String args[]){
		new sample();
	}
}
	