trigger OpptyAccount on Opportunity (before insert) {
/*    if(trigger.isInsert && trigger.isbefore){
        List<id>  opptynumber = new List<id>();
        for(Opportunity k: trigger.new){
            opptynumber.add(k.Accountid);
        }
    List<Opportunity> lst = [Select  id, CreatedDate, CreatedbyID FROM Opportunity where Opportunity.Accountid IN: opptynumber];
        for(Opportunity k: trigger.new ){
            for(Opportunity i : lst){
                Date i_created_date = i.createddate.date();
                if( i_created_date ==Date.today()){
                    k.addError('Cannot create two opprty on same day for one account');
                }
            }
        }
    }*/
    
    
}