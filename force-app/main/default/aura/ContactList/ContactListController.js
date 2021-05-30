({
	doinit : function(component, event, helper) {
    /*step 1 */
        var action = component.get('c.getContactList');
        /*Step 2 optional */
                                                 action.setParams({
                                                     
                                                     accountId :component.get('v.recordId') ,                  })  ;   
        /*step 4*/
        action.setCallback(this, function(response){
            var responseValue= response.getReturnValue();
            console.log('responseValue', responseValue);
            component.set('v.ContactList',responseValue);
        });
        /* step 3*/
		$A.enqueueAction(action, false);
    },
        doRedirect : function(component, event, helper) {
            var eventSource = event.getSource();
            var id= eventSource.get('v.name');
            
            
    var navEvt = $A.get("e.force:navigateToSObject");
    navEvt.setParams({
      "recordId": id,
      "slideDevName": "detail"
    });
    navEvt.fire();
	},
})