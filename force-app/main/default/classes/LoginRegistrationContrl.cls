public class LoginRegistrationContrl{
   Registrartion__c reg; 
   public LoginRegistrationContrl(ApexPages.standardController controller){
   reg=new Registrartion__c();
   reg=(Registrartion__c) controller.getRecord();
   }
   //from visual force pageif you call a method first it will check in extension.
   //after that it will consider methods which are in main controller(Either standard or custom controller)
   //if we have multiple classes in extension then it will give priority left to right.
    public void save(){
    
    /* Severity levels - 
     1.Confirm
     2.Error
     3.FATAL
     4.INFO
     5.Warning
     */
     /* To display error messages on the page pageMessages(pageMessage, Message etc) */
       if(reg.Password__c == null || reg.Password__c == '') {
           ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Error, 'Please enter passwoed'));
       }
         else {
            if(reg.Password__c == null || reg.Password__c == '') {
               ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Error, 'Please enter confirm passwoed'));
             }
            else{
              if(reg.Password__c != reg.Confirm_Password__c){
               ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Error, 'Password and confirm password be sme'));
              }
            }
    }
}
}