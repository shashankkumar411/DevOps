trigger PreventDuplicateCandidate on Candidate__c (before insert, before update) {
    if ((trigger.isInsert || trigger.isUpdate) && trigger.isBefore){
        for(Candidate__c can : trigger.new){
           {
            integer recordscount =   [Select count() from 	Candidate__c  where name  =: can.name and Email__c =: can.Email__c] ;
               if(recordscount>0){
                   can.AddError('We have a candidate record with this name');
               }
            }
        }
        
    }
    
    
}