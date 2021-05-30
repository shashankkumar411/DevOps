trigger LeadSourceWeb on Lead (before insert) {
    
    if(trigger.isInsert && trigger.isBefore){
        for(Lead led : trigger.new ){
            if(led.LeadSource=='Web'){
                led.rating='Cold';
                
            }
            else{
                led.rating='Hot';
            }
        }
    }

}