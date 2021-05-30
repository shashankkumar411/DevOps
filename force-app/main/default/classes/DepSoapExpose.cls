//Web service class should always be global.
global class DepSoapExpose {
    //Webservice boolean isTRue ; Variables should not be static . 
    webservice static void insertDep(String depName , String depLoc) {
       insert new Department__c(name= depname ,Location__c= depLoc); 
    }
}