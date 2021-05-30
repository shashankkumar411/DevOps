({
	doCreateMap : function(component, event, helper) {
        var Map = [];
        for(i=0;i<10;i++){
            map.push({
                key:i,
                value:'Test ' +i  
            });
        }
		component.set('v.Mapvar',map);
	}
})