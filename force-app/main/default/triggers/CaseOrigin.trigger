trigger CaseOrigin on Case (before insert) {
    if(trigger.isInsert && trigger.isBefore){
        for(Case can: trigger.new){
            if(can.origin== 'Email'){
                can.status= 'New';
                can.priority='Medium';
                    
            }
        }
    }
    
}