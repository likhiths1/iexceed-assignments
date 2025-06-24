import java.util.*;
class rps{
	public static void main(String args[]){
		while(true){
			Random r = new Random();
			int x = r.nextInt(3);
			Scanner sc = new Scanner(System.in);
			System.out.print("(0:ROCK, 1:PAPER, 2: SCISSOR) Enter input: ");
			int u = sc.nextInt();
			if((u==0 && x==0)|| (u==1 && x==1) || (u==2 && x==2))
				System.out.println("Draw!!");
			else if((u==0 && x==2)||(u==1 && x==0)||(u==2 && x==1))
				System.out.println("Computer throws "+x+" You win!!");
			else if((x==0 && u==2)||(x==1 && u==0)||(x==2 && u==1))
				System.out.println("Computer throws "+x+" You lose!!");
			else if(u==5)
					System.exit(0);
			else
				System.out.println("Enter proper value");
	
		}
	}
}