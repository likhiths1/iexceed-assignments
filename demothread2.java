class sample extends Thread{
    
    public void run(){
        Thread t = new Thread(this);
        t.setName("Ket");
        System.out.println(t.getName());
    }
    
}

public class demothread2 {
    public static void main(String[] args) {
        new sample().run();
    }
}
