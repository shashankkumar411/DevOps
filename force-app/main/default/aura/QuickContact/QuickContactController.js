({
	doSave : function(component, event, helper) {
        var action =component.get('c.createContact');
        action.setParams(
            {
                con : component.get('v.createContact'),
                AccountId :component.get('v.accountId')
            });
        action.setCallback(this,function(response){
            var state=response.getState();
            alert(state);
            if(state=='SUCCESS' || state=='DRAFT'){
                var responsevalue=respose.getReturnValue();
            }else if(state=='ERROR'){
                
            }else if(state== 'INCOMPLETE'){
                
            }
        },'ALL');
		$A.enqueueAction(action)
	}
})