trigger AccountContactUpdate on Account (before insert ,after insert , before update, after update) {
/*    if(trigger.isUpdate && trigger.isAfter){
        if(RecursionStoper.AccountNameUpdate==true){
            RecursionStoper.AccountNameUpdate=false;
        List<Account> lstacc = [Select id From Account where ID IN :trigger.new  ];
        List<Account> listaccountupdate = new List<Account>();
       for(Account acc : lstacc){
            acc.phone='3456788';
            
           listaccountupdate.add(acc);
        } 
            update listaccountupdate;
        }
       
     List<Contact> conRelatedAcc = [Select id , phone from Contact where AccountID IN :trigger.new  ];
     List<Contact> conlist =new List<Contact>();
     Map<Id,String> accountphonemap = new    Map<Id,String>();
       
                      for(Contact con: conRelatedAcc ){
                          
            con.phone= accountphonemap.get(con.AccountId);
            
            conlist.add(con);
                          
        }
       
    
    update conlist;
    }*/
}