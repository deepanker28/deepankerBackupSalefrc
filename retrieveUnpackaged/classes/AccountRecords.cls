public with sharing class AccountRecords {
	@AuraEnabled
    public static List<Account> getARecords(){
        return [select Name,id from Account limit 5];
    }
}