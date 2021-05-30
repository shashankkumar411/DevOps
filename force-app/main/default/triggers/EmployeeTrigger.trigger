/*trigger EmployeeTrigger on Employee__c (before insert) {
//Before triggers : To perform validations use before triggers .
//Good Trigger : Trigger should be bulkified 
   for (Employee__c emp : trigger.new){
        if(emp.City__c == 'Bangalore' || emp.City__c == 'Newyork') 
           if(emp.Email__c == ' ' || emp.Email__c=='null'){
            emp.Email__c.addError('Email is mandatory for cities bangalore and Newyork');
           
           }
           else {
               List<String> values = emp.Email__c.split('@');
               emp.Email__c=values[0] + '@' +emp.City__c +' .com';
               }
             


       }

}*/
trigger EmployeeTrigger on Employee__c (before insert){

}