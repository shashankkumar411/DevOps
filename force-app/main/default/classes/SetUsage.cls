public class SetUsage{
  public static void setUse(){
    Set<String> nameSet =new  Set<String>();
    //Set is unordered and don't allow duplicates .
    nameSet.add('Venki');
    nameSet.add('Sunil');
    nameSet.add('Venki');
    
    //no sort method for set . 
    //we cannot  access elements with index.
    //we can go based on value .
    System.debug('nameSet values: '+nameSet+'with size '+nameSet.size());
    nameSet.remove('Venki');
    
    //Using contains we search for a value in set which is not possible with list.
    
    System.debug('nameSet contains : '+nameSet.contains('Venki'));
    
    
  }
  }

// Generic method to search a string from set of strings and which will ignore case -sesnsitive  

//public static Boolean isStrExists(Set<String> strSet, String searchstr) {
 // Boolean isTrue =false;
 // if(strSet !=null &&  strSet.size() >0) {
  //  for(String strVal : strSet) {
  //     if(strVal.equalsIgnoreCase(searchstr)){
   //      isTrue= true;
    //     break;