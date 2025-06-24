class sample{
	static int x;
	sample(){
		x+=1;
		System.out.println(x);
	}
}
class staticvariable{
	public static void main(String asd[]){
		new sample();
		new sample();
	}
}