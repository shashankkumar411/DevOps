trigger AccountRevenue on Account (before insert , before Update) {
       if ((trigger.isInsert || trigger.isUpdate) && trigger.isBefore )
       {
                      
           
           for(Schema.Account acc : trigger.new)
           {
               if (acc.industry == 'Banking') 
                   acc.Annualrevenue =500;
                else if (acc.industry== 'Finance')
                    acc.Annualrevenue=1000 ;
                else
                    acc.Annualrevenue=1500 ;
               
               
           }
         }
       }