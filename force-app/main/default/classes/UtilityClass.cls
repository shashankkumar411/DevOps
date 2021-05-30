public with sharing class UtilityClass {
    public UtilityClass() {

    }
    @AuraEnabled
    public static Map<Integer, String> mapDemo(){
       
            Map<Integer, String> testmap = new Map<Integer, String>();
            testmap.put(1,'Shashank')    ;    
            testmap.put(2,'Rahul')    ;   
            testmap.put(3,'lee')    ;  
            testmap.put(1,'raja')    ;  
            testmap.put(1,'Shas')    ;    
            return testmap; 
    }
    @AuraEnabled
        public static string testName() {
            return 'test string';
        }
    
}