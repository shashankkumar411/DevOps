({
	doChange : function(component, event, helper) {
		 alert('Change value');
	},
    Changevalue : function(component, event, helper) {
		 component.set('v.test','test');
	},
    doInit : function(component, event, helper) {
		 component.set('v.test','oninit');
	}
})