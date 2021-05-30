public class SavingAccount extends Account {
//Types of classes 
//1.final 
//2.virtual
//3.abstract
// By default class is final
//To inherit the class parent class should be either virtual or abstract otherwise user will see the following error msg :
// Compile Error: Non-virtual and non-abstract type cannot be extended: 

//Virtual class: All the methods inside of the class should have body 
//Abstract class: We can declare method prototypes(we cannot  create object for abstract  classes)
//In child class we have to implement the body for the method prototype of the parent class otherwise we cannot 
//create object for child class also (It will become abstract ) .
public override void withdraw(integer amt) {

//Overrding : modifying parent class method in child class method .
      try{
      if(amt>balance)
       throw new AccountException('Insufficient funds .');
      balance-=amt + 100; 
      }
      catch (AccountException ae)
       {
       System.debug('Exception is :' +ae.getMessage());
       }
   }

 public void ShowBalance(){
System.debug('Balance is' +balance);
}
}