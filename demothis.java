class sample{
	sample(){
		this(100,"AB");
		display(); //same as this.display()
	}
	sample(int x,String y){
		System.out.println(x+y);
	}
	public void display(){
		System.out.println("display");
		
	}	
}

class demothis{
	public static void main(String args[]){
		new sample();
	}
	
}