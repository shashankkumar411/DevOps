public class LoginRegistration1{

Registration__c reg;
/*Constructor */
public LoginRegistration1(ApexPages.StandardController controller){

reg =new Registration__c() ;
reg= (Registration__c) controller.getRecord(); /*Type Casting */

}
 public pageReference save() {
     pageReference pr ; //Default  value is null ;
    if(reg.Password__c == null || reg.Password__c == ' ') {
     ApexPages.addMessage(new  ApexPages.Message(ApexPages.severity.Error,'Please enter a valid password'));
       }
       else
       {
        if(reg.Confirm_Password__c == null || reg.Confirm_Password__c== ' ') {
     ApexPages.addMessage(new  ApexPages.Message(ApexPages.severity.Error,'Please enter a valid confirm password'));
       }
       else{
         if(reg.Password__c!=reg.Confirm_Password__c) {
         ApexPages.addMessage(new  ApexPages.Message(ApexPages.severity.Error,'Password and confirm password need to be same'));

         }
         else{
          try {
          insert reg;
          }
          catch(Exception e){
          String errorMsg= ' ';
          if(e.getMessage().contains('Duplicate_Value, duplicate value found :Email__c')){
          errorMsg= 'Username already exists.' ;
          }
          else{
           errorMsg= e.getMessage();
          }
            ApexPages.addMessage(new  ApexPages.Message(ApexPages.severity.Error,e.getMessage()));
            

          }
          pr=page.LoginSuccess1; // while deleting login success it will  show dependency 
      //    pr =new pageReference('/apex/LoginSuccess'); // it won't show dependency while deleting ;
          }
       }
       }
       return pr;
  }
}