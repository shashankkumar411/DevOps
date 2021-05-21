public with sharing class productManager {
  @AuraEnabled(cacheable=true)
  public static list<Product2> FindAllProduct(){
      list<Product2> productList = [SELECT Id, Name,Family,ProductCode,Description FROM Product2 WHERE IsActive=TRUE];    
      return productList; 
  }
}