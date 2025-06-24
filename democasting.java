class phone{
    public void call(){
        System.out.println("Phone call");
    }
}
class sonyphone extends phone{
    public void call(){
        System.out.println("Phone1 call");
    }
    public void otherFunction(){
        System.out.println("GPS enabled..");
    }
}
class democasting{
    public static void main(String[] args) {
        sonyphone s = new sonyphone();
        phone p = (phone)s;
        p.call();
        s.call();
    }
}
