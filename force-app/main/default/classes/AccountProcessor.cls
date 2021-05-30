Public class AccountProcessor {


@future
public static void countContacts(List<Id> acctid){

List<Account> fetchacct = [Select id ,name from Account Where Id in : acctid];
List<Account> updatedacct = new List<Account>() ;
for(Account acc : fetchacct) {

acc.Number_Of_Contacts__c= [Select count() from Contact where AccountId =:acc.Id ];
updatedacct.add(acc);
    

}
update updatedacct;
 
}
}