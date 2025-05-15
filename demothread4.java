
public class demothread4 {
    public static void main(String[] args) throws Exception{
        new Thread(){
            public void run(){
                System.out.println(Thread.currentThread().getName());
            }
        }.start();

        new Thread(){
            public void run(){
                System.out.println(Thread.currentThread().getName());
            }
        }.start();
    }
}
