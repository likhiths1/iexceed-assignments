public class college {
    String clgname;int clgid;
    college(String clgname,int clgid){
        this.clgname=clgname;
        this.clgid=clgid;
    }
    public void displayCollege(){
        System.out.println("College Name: "+clgname);
        System.out.println("College Id: "+clgid);
    }
}
