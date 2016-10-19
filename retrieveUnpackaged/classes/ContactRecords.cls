public with sharing class ContactRecords {
	@AuraEnabled
    public static List<Contact> getCRecords(String idd){
        return [select Name,id from Contact where AccountId =:idd limit 5];
    }
}