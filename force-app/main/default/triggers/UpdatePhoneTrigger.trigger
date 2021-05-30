trigger UpdatePhoneTrigger on Account (after update) {
    if(trigger.isupdate && trigger.isafter){
  Set<id> getaccountid = new Set<id>();
        for(Account a :trigger.new){
            getaccountid.add(a.id);
        }
        List<Contact> updatecon = new List<Contact>();
    List<Contact> c =[Select id ,accountid ,phone from Contact where accountid in: getaccountid];
        for(Account a : trigger.new){
            
            for(Contact c1 : c){
                c1.phone='4444';
                updatecon.add(c1);
            }
        } 
        update updatecon;
    }
    

}