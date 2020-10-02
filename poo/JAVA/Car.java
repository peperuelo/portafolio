package POO.JAVA;

public class Car {
    Integer id;
    String license;
    String driver;
    Integer passenger;

    public void  car(String license,String driver){
    this.license = license;
    this.driver = driver;

    }

    public void PrintDatacar(){
        System.out.println("license:"+ license+ "\n id"+id+ "\n driver:"+driver+"\n Passenger:"+passenger );
    }
    
 }