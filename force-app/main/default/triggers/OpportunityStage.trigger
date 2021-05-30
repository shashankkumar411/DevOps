trigger OpportunityStage on Opportunity (after update) {
    
    if(trigger.isUpdate && trigger.IsAfter){
       
        for(Opportunity opp : trigger.old){
            if(opp.StageName =='Closed Won'){
            opp.addError('Opportunity  Stage cannot be updated from  closed won');
            
            }
    }

    }}