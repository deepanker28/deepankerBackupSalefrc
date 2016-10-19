public class getBrandRecords {
    @AuraEnabled public static List<Brand__c> getBReocrds(){
        return [select id,Name from Brand__c];
    }

}