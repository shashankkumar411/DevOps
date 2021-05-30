trigger RestrictActiveAccountDeletion on Account (before delete) {
    
    if(trigger.isDelete && trigger.isBefore){
        
        for(Schema.Account acc : trigger.old)
        {
            if(acc.Active__c =='Yes')
            {
                acc.AddError('Active account cannot be deleted');
            }
        }
    }

}