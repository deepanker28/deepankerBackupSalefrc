public with sharing class MyObjController {
    
    @AuraEnabled
    public static List<Contact> getMyObjects() {

        // Perform isAccessible() checks here 
        return [SELECT Id, Name FROM Contact];
    }
}