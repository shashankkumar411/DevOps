public class Opportintytestclass1 {
    public void Showdata()       
    {
        list<opportunity> opplist=[select id,name,StageName from opportunity];
        for(opportunity obj: opplist){
            system.debug(obj.id);
            system.debug(obj.name);
            system.debug(obj.stagename);
        }
            
            
            
    }
       

}