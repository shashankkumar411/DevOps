({
	add : function(component, event, helper) {
	var no1=	component.get("v.Number1");
        console.log('enteredno 1 is '+no1);
     var no2=	component.get("v.Number2");   
        var res=Number(no1) + Number(no2);
        component.set("v.result",res);
	},
    sub : function(component, event, helper) {
        var no1=	component.get("v.Number1");
		var no2=	component.get("v.Number2");
         var res=Number(no1) - Number(no2);
          component.set("v.result",res);
	},
    mult : function(component, event, helper) {
		var no1=	component.get("v.Number1");
        var no2=	component.get("v.Number2");
         var res=Number(no1) * Number(no2);
          component.set("v.result",res);
	},
    div : function(component, event, helper) {
		var no1=	component.get("v.Number1");
        var no2=	component.get("v.Number2");
         var res=Number(no1) / Number(no2);
          component.set("v.result",res);
	}
})