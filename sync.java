
class callme{
    synchronized public void call(String msg){
        System.out.println(msg);
    }
}
class caller extends Thread{
    callme targ;
    String msg;
    caller(callme targ,String msg){
        this.targ=targ;
        this.msg=msg;
        //Thread t = new Thread(this);
    }
       public void run(){
            targ.call(msg);
        }
}
public class sync {
    public static void main(String[] args) throws Exception{
       callme c= new callme();
       caller t1 = new caller(c,"welcome"); 
       caller t2 = new caller(c,"to");
       caller t3 = new caller(c,"iexceed"); 
       t1.start();
       t1.join();
       t2.start();
       t2.join();
       t3.start();
       t3.join();
    }
}
