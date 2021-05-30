public with sharing class ContactManager {
    @AuraEnabled(cacheable = true)
    public static list<Contact> fetchAllContactsRecords(){
        List<Contact> conlist = [SELECT Id,NAME,Phone,Email,Account.Name FROM Contact ];
        return conlist;
    }
    @AuraEnabled(cacheable= true)
    public static List<Account> getAllAccount(){
      return [SELECT Id, Name FROM Account];
    }
}