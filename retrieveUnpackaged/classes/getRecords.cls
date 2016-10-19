public class getRecords {
    @AuraEnabled 
    public static List<Store__c> recordss()
    {
        return [select id,Name from Store__c];
    }
    
    @AuraEnabled
    public static List<Brand__c> bRecords(String Store_id)
    {
        return [select id,Name from Brand__c where Store__c=:Store_id];
    }
    
    @AuraEnabled
    public static List<Product__c> pRecords(String Product_id)
    {
        return [select id,Name from Product__c where Brand__c=:Product_id];
    }
    
    @AuraEnabled
    public static List<Questionn__c> qRecords(String Question_id)
    {
        return [select id,Name from Questionn__c where Products__c=:Question_id];
    }
    
    @AuraEnabled
    public static void InsertSurvey(String Question1,String Answer1)
    {
        Surveyy__c sv=new Surveyy__c();
        sv.Question_1__c=Question1;
        sv.Answer_1__c=Answer1;
        insert sv;
        
    }

}