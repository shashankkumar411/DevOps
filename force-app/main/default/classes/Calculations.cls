public class Calculations implements CalculationsInterface{

 /**** Variable declaration ****/
  public Integer a;
  public Integer b;
  
 /**  Intialization **/ 
 public Calculations(Integer a , Integer b){
  a=a;
  b=b;
     }    
   
  /** Method Declaration **/  
  public Integer  addition(Integer a ,Integer b){
  return a+b;
  }
  public Integer  substraction(Integer a ,Integer b){
  return a+b;
  }
  public Integer  multiply(Integer a ,Integer b){
  return a*b;
  }
  public Integer  division(Integer a ,Integer b){
  return a/b;
  }
  public void showResult() {
        //Operator Overloding : Same operator but  different behaviour 
       
       System.debug('Value of variable a is :' +a);
       System.debug('Value of variable b is :' +b);
       System.debug('Addition result : ' +addition(a ,b));
       System.debug('Substraction result :'+substraction(a,b));
       System.debug('Multiplication result :' +multiply(a,b));
       System.debug('Division result :' +division(a,b));
       }
}