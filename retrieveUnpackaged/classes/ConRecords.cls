public with sharing class ConRecords {
    static List<Contact> conn=new List<Contact>();
   
    @AuraEnabled    
    public static List<Contact> getRecord(String nam)
    {  
       String name=nam+'%';        
        return [select id,Name from Contact where Name like :name]; 
    }
   
     
    @AuraEnabled
    public static Contact putList(String idd){  
        
       return [select Id,Name,Email,MobilePhone from Contact where id=:idd];
    } 
    
    @AuraEnabled
    public static void removeCon(String rmId){
        
        Contact c1=[select Id,Name,Email,MobilePhone from Contact where id=:rmId];
            delete c1;
    }
    
    @AuraEnabled
    public static Contact getContact(String conId){
            return [select Id,Name,Email,MobilePhone from Contact where id=:conId];
    }
    
    @AuraEnabled
    public static List<Template__c> getTemplates(String TempType){
        List<Template__c> tem=[select Id,Name from Template__c where Type__c=:TempType];
        System.debug(tem);
        return tem;
    }
    
    @AuraEnabled
    public static Template__c SelectedTemplates(String selTemp){
        Template__c tem=[select Id,Name from Template__c where Id=:selTemp];
        
        return tem;
    }
      
}