abstract class sample{
    sample(){
        System.out.println("sample");
    }
    public abstract void display();     
}
class A extends sample{
    @Override
    public void display(){
        System.out.println("Hello");
    }
}
class demoabstract{
    public static void main(String[] args) {
        sample obj = new A();
        obj.display();
    }
}