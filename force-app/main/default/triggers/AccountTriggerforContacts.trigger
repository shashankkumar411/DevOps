/*trigger AccountTriggerforContacts on Account (after insert) {
    
    if(trigger.isAfter && trigger.isInsert){
        
        System.enqueueJob(new ContactCreationQueueable(Trigger.new));
    }

}*/

trigger AccountTriggerforContacts on Account (after insert) {
}