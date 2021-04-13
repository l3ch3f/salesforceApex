public with sharing class CampingListController {
    @AuraEnabled
    public static List<Camping_Item__c> getItems(){
        try {
            List<Camping_Item__c> campingItems = [SELECT id, Name, Price__c, Quantity__c, Packed__c FROM Camping_Item__c];
            return campingItems;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item){
        try {
            insert item;
            return item;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
