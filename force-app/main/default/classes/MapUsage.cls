public class MapUsage {
  public static void mapuse() {
  
 //map holds key and  value pair 
 //map also won't allow duplicates but if you give duplicates key old value of that
 //Key will be replaced with the new value eg : India => 91 old value India =>911 new value.
 /* Map<String, String> codes = new <String,String>();
   codes.put('India','911');
   codes.put('Usa','001');
   codes.put('Aus','901'); */
  Map<String, String> codes = new Map<String,String> {'India'=>'911' ,'USA' =>'001', 'Aus' =>'900'};
  System.debug('Map elements are : '+codes+'with size' +codes.size());
   System.debug('Map keys are : '+codes.keyset());
    System.debug('Map value are : '+codes.values());
    System.debug('Map search : ' +codes.containsKey('USA'));
  }
  }