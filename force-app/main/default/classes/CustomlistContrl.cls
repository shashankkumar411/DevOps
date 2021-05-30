public class CustomlistContrl{
 public List<Employee__c> employees {get;set;}
 public ApexPages.Standardcontroller con {get;set;}
 public CustomListContrl(){
     employees = [Select  id ,name , name__C,salary__c,city__C From Employee__C Limit : limits.getLimitQueryRows()]; 
 } 
}