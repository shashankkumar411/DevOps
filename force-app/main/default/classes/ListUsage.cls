public class ListUsage{

   public static Integer count=0;
   public static void listuse(){
   //Static: Scope of the variable is throughout the transaction
   //Transaction: Starting of the execution to ending of the execution.
   //Scope of the object is within the object .
   //Static method or variables can be invoked with class name only, no need to create object,classname.methodname  .
   //Inside the static methods we can use only static variables 
         count++;   
   //
   //Syntax:  List<datatype> listname= new List<datatype>();      
   // Working with primitive data types .
   //
   
  /* List<String> namelst= new List<String>();
   namelst.add('Shashank');
   namelst.add('gilly');
   namelst.add('lee'); */
   //Below statement is equal to above block of code//
   List<String> namelst = new List<String>{'Shashank','gilly','lee'};
   List<String> namelst1 =new List<String>{'Adam','rahul', 'ram'};
   List<String> namelst2 = namelst1.clone();
   namelst2.remove(0);
   System.debug('Names list : ' +namelst2+ ' with size :' +namelst2.size());
   //namelst2.clear();  //
   namelst1.addAll(namelst); //Use add all to add multiple elements
   namelst.sort() ; //By default it sorts in ascending order.
   System.debug('Names list : ' +namelst+ ' with size :' +namelst.size());
   System.debug('Name list 1st value :' +namelst[1]); 
 //  System.debug('Name list 1st value :' +namelst.get(1)); 
   namelst.set(1,'ABC');
   System.debug('Name list 1st value :' +namelst.get(1).length()); 
   
   
   
   /* Type Casting */
   /* List<Integer> intList= new List<Integer>{'101','102','103'};
      List<String>  strList =new List<String>();
      for(Integer val : intList){
        strList.add(String.valueof(val));
       } */
    
    }

}