trigger MandatoryAccountContact on Contact (before insert, before update) {
    if((trigger.isInsert || trigger.isUpdate) && trigger.isbefore ) {
        for (Contact con : trigger.new){
            if(con.AccountId == null)
                con.AddError('Please select the account');
        }
    }
}