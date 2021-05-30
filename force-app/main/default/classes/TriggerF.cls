Public Abstract class TriggerF{
 
public abstract void beforeinsert() ;
Public abstract void afterinsert(List<Sobject> newvalue , List<Sobject> oldvalue) ;    
public abstract void beforeupdate(); 
public abstract void afterupdate() ;
public abstract void beforedelete();
public abstract void afterdelete() ;
public abstract void afterundelete(); 
}