public with sharing class ContactManager {
    @AuraEnabled(cacheable = true)
    public static list<Contact> fetchAllContactsRecords(string accountId ){
        if(string.isNotBlank(accountId)){
        List<Contact> conlist = [SELECT Id,NAME,Phone,Email,Account.Name FROM Contact WHERE AccountId =:accountId];
        return conlist;

        }
        else{
            return NULL;
        }
    }
    @AuraEnabled(cacheable= true)
    public static List<Account> getAllAccount(){
      return [SELECT Id, Name FROM Account];
    }
}
