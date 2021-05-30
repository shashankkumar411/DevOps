public class ContactListController {
    @AuraEnabled
    public static List<Contact> getContactList(String accountId){
        
        List<Contact> contactlist = new List<Contact>([Select   Firstname,Lastname,Email,Phone from Contact Where Email !=null AND AccountId=:accountId]);
        return contactlist; 
        
        
    }
    
 @AuraEnabled 
    /* we will pass the parameter from JS */
    public static Contact createContact(Contact con , Id AccountId){
        con.AccountId=AccountId;
        insert con;
        return con;
    }
}