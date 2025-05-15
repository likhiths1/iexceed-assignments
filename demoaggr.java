class bank{
    int ifsc;
    String bnkname;
    bank(int ifsc,String bnkname){
        this.ifsc=ifsc;
        this.bnkname=bnkname;
    }
    public void displaybank(customer c){
        System.out.println("BankName: "+bnkname);
        System.out.println("IFSC: "+ifsc);
        c.displaycust();
    }
}
class customer{
    String custname;
    int balance;
    customer(int balance,String custname){
        this.balance = balance;
        this.custname=custname;
    }
    public void displaycust(){
        System.out.println("Name: "+custname);
        System.out.println("Balance: "+balance);
    }
}

public class demoaggr {
    public static void main(String asd[]){
        bank bnk = new bank(1122,"ICICI");
        customer c = new customer(1000,"Mohan");
        bnk.displaybank(c);
    }
}
