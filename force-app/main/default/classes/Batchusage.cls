//DATABASE is a class provided by salesforce.
//Batachable is a global interface which is inside the database class
//Batachable include 3 prtototye  1.start , 2. execute 3. finish . 
//Start and finish method will execute only one time.
//Execute method executes multiple times . 


global class Batchusage implements Database.Batchable <sobject> {
 
 
 global Database.queryLocator start(Database.BatchableContext bc) {
  //Collect the record to process .It will foreward these record to  execute method.
  //Database.querylocator  if we use then can process 50 million record .else 50 k .
 // String query = 'Select  id ,name , Location__c from Department__c where Location__c=\'\'' ;
  return Database.getqueryLocator('Select  id ,name , Location__c from Department__c where Location__c=\'\'' );
  }
  global  void execute(Database.BatchableContext bc , List<SObject> sObjLst) {
   //SPLIT the records forwarded by start method into batches . 
   //Max batch size is : 2000  Default is : 200
   List<Department__c> depUpdlst = new List<Department__c>();
   for(Sobject sobj : sObjlst){
      Department__c  dept = (Department__c ) sobj ;
      dept.Location__c='Bangalore' ;
      depUpdlst.add(dept) ;
      
   }
   if(depUpdlst.size()>0)
   update depUpdlst ;
  }
  
   
  
  global void finish(Database.BatchableContext bc) {
  
  //Post commit logic like sending emails for success or failures of the batches 
  AsyncApexJob a = [Select  id from  AsyncApexJob  where id =: bc.getJobId()]; 
  Messaging.singleEmailMessage mail =new Messaging.singleEmailMessage();
  mail.setToAddresses(new String[]{a.CreatedBy.Email});
  mail.setSubject('Batch class result');
  mail.setHtmlBody('The batch job processed ' + a.TotalJobItems + 'batches with  ' +  a.NumberofErrors + 'failures.') ;
  Messaging.sendEmail(new Messaging.singleEmailMessage[]{mail});
  }
  
  
 }