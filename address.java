public class address {
    int plotno;
    String plotname;
    address(int plotno,String plotname){
        this.plotno = plotno;
        this.plotname = plotname;
        
    }
    public void displayAddress(){
        System.out.println("Plot No: "+plotno);
        System.out.println("Plot Name: "+plotname);
    }
}
