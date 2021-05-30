/*

trigger ContactEmailPhoneValidation on Contact (before insert, before update) {
    if((trigger.isInsert || trigger.isUpdate ) && trigger.isBefore  ) {
        
        List<Contact> lstcon = trigger.new ;
          if(!lstcon.isEmpty())
          {
              for(Contact con : lstcon) {
                  if(con.Email == null || con.Email==  ' ') {
                      con.Email.AddError('Please enter the email id ');
              }
                else If(con.Phone == null  || con.Phone ==' ') {
                  con.Phone.AddError('Please enter phone number') ;
                  }
              }
          }
         }
}
*/
trigger ContactEmailPhoneValidation on Contact (before insert, before update) {
}