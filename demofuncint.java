@FunctionalInterface
interface functionalint{
    public void showme();
}
@FunctionalInterface
interface functionalint1{ 
    public void showme1();
}
public class demofuncint{
    public static void main(String[] args) {
        new functionalint() {
            public void showme(){
                System.out.println("Functional Interface..");
            }
        }.showme();
        new functionalint1(){
            public void showme1(){
                System.out.println("Functional Interface1..");
            }
        }.showme1();
    }   
}
