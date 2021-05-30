//Top-level type must have public or global visibility.
//Apex is case-Insensitive.
//Identation: Following programming standard.
//Class name should start with Capital letter but not mandatory.
//Default  Abstraction for the class ,class variables and methods is private .

public class Rectangle implements RectangleInterface {
     /*** Variable declaration ***/ 
     //Variable name should start with small letter and readable .
     //Variable can contain number only  _special character but should not start as variable name .
     //Variable names should not be keywords.
     //
     Decimal /* keyword */ length  /*Identifier*/ ; /*** Class Variable ***/
     public Decimal  breadth; //Default  value is null .
     
     /** Initialization **/
     // ---  Default  Constructor --- //
     public Rectangle() {
        //Constructor name should be same as class name, also it have  no return type  .
        //Should not have any return type .
        length=0;
        breadth=0;
     
     }
   // ---Parametrized Constructor --- //
   public Rectangle(Decimal length, Decimal breadth /*local variables*/) {
    //Constructor Overloading : Same constructor name with different parameters . 
    //Name Shadowing  If we have class variable and local variable with same name then local variable will dominate the class variable.
    // To bring class variable into visilibiliy use this keyword.
    // length =length;
    // breadth =breadth;
    this.length=length;
    this.breadth=breadth;
    }  
    
   /**  Method Declaration **/
   public Decimal   area() { 
       // Method name always start with small  letter .
       // Method should have a return type.
       // If you don't want  to return anything use void .
       // If you mention return type other than void we should inclue return stmt ,otherwise error will come .
       // Missing return statement required return type:
       // Non void method might not return a value or might have statemnt after a return statement .
       return length * breadth;
       
   }
   
   public Decimal area(Decimal l , Decimal b){
        return l*b;
   }
    public  Decimal perimeter() {
        return 2*(length + breadth);
       }
    public   Decimal perimeter(Decimal l , Decimal b){
       return 2*(l+b);
    }

    public void showResult() {
        //Operator Overloding : Same operator but  different behaviour .
     system.debug('Length is:  '+length);
     system.debug('Breadth is: '+breadth);
     system.debug('Area is : ' +area());
     system.debug('Perimeter is : '+perimeter());
     
     
    }          
}