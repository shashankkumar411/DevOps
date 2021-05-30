trigger myTrg on Employee__c (before insert , before update, before delete , after insert , after delete, after update, after undelete ){

TrgHelper gh = new TrgHelper();

if(trigger.isBefore && trigger.isUpdate) {
  gh.Binsert( trigger.new ,trigger.old) ;
  
}
}