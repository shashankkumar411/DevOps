public class ContactTriggerHandler{

public static void BeforeInsertHandler(List<Contact> conlst){


    for(Contact con :conlst){
    
    con.Description='Contact record created succesfully';
    
    

}
}

public static void BeforeUpdateHandler(List<Contact> conlst , Map<Id,Contact> oldconMap ){

 for(Contact con :conlst){
    
    con.Description='Contact record created succesfully'+UserInfo.getUserName();
    }
}

public static void BeforeDeleteHandler(List<Contact> conlst){
  for(Contact con :conlst){
      if(con.AccountId == NULL || con.AccountId == ''){
        con.addError('Account will not be blank');
      }
}
}
}