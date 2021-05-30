public class Calculation implements CalculationsInterface {
 
    public Integer addition(integer a , integer b){
      return a+b;
    }
    public Integer  substraction(integer a ,integer b){
     return a-b;
    }
    public Integer multiply(integer a, integer b){
     return a*b; 
    }
  
    public Integer   division(integer a ,integer b){
     try{
     return a/b;
    }
    catch (Exception e){
    System.debug('Exception is : ' +e.getMessage());
     return null;
    }
   } 
   /* public void  showResult(){
    System.debug('Addition is : '+addition()); 
    System.debug('Substraction is : ' +substraction( a , b));
    System.debug('Multiplication is : ' +multiply( a , b));
    System.debug('Divison is : ' +division( a , b));
    }
  
*/

}