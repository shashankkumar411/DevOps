public class BeerSearchAuraService {
 @AuraEnabled
    public static List<sObject> searchBeer(String searchParam){
       String likeParam = '%' +searchParam+'%';
       String Query ='select id, Name from Beer__c where Name Like :likeParam LIMIT 10 ';  
       List<sObject> sObjectList = Database.query(Query);
        return sObjectList;
    }	
}