public class LeadProcessor implements Database.Batchable<Sobject>{

public static Database.QueryLocator start(Database.BatchableContext bc){

return Database.getQueryLocator([Select LeadSource From Lead ]);
  
}

public void execute(Database.BatchableContext bc  , List<lead> Records){

for(Lead ld : Records) {
  ld.LeadSource = 'Dreamforce' ;
}
  update Records ;
}

Public void finish(Database.BatchableContext bc ) {

}

}