class sample extends Thread{

        public void run(){
            for(int i=0;i<10;i++){
                System.out.println(i);
            }
        }
        public void start(){
            System.out.println("Start is working..");
        }
}
public class demothread1 {
    public static void main(String[] args) {
        sample ss = new sample();
        ss.start();
        ss.run();
    }
}
