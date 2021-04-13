({
     packItem: function(component, event, helper) {
        let btnClicked = event.getSource();         // the button
        let item = component.get("v.item", true);
        item.Packed__c = true;
        component.set("v.item",item);    
        btnClicked.set("v.disabled",true);
    }
})
