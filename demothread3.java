class sample extends Thread{
    public void run(){
        try{
            for(int i=0;i<10;i++){
                System.out.println(i);
               // Thread.sleep(1000);
            }
            }catch(Exception e){}
        }
}
public class demothread3 {
    public static void main(String[] args) throws Exception{
        Thread t = Thread.currentThread();
        for (int i=0;i<5;i++){
            System.out.println(t.getName());
            Thread.sleep(1000);
        }
        new sample().start();
    }
}
