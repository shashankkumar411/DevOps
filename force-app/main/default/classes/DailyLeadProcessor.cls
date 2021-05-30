Public class DailyLeadProcessor implements Schedulable {

Public void execute(SchedulableContext sc) {


List<Lead>  ld = [Select  Id ,LeadSource    from Lead Where LeadSource= null] ;
if(!ld.isEmpty())
  for(Lead l : ld) {
  l.LeadSource='Dreamforce' ;
  
  }
  update ld ;

}

}