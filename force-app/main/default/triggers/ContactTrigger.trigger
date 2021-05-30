trigger ContactTrigger on Contact ( before insert ,before update,before delete) {


 if(trigger.isInsert && trigger.isBefore){
   
    ContactTriggerHandler.BeforeInsertHandler(Trigger.new);
    }
    
    if(trigger.IsUpdate && trigger.IsBefore){
    
    ContactTriggerHandler.BeforeUpdateHandler(Trigger.new , Trigger.oldMap);
    }
     if(trigger.IsDelete && trigger.IsBefore){
     
       ContactTriggerHandler.BeforeDeleteHandler(Trigger.old);
       
     }
 
 }