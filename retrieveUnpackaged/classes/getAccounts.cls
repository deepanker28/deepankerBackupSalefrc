public with sharing class getAccounts {
    
    @AuraEnabled
    public static List<Account> getRecord(){
        return [select id,Name,Phone,AccountNumber from Account limit 5];
    }
    
    @AuraEnabled
    public static Account getSingle(String idd){
        return [select id,Name,Phone,AccountNumber from Account where id=:idd];
    }
    
    @AuraEnabled
    public static Account updateAccount(String idd1,String Namee,String Phone,String numm ){
        Account acc;
        acc=[select Name,Phone,AccountNumber from Account where id=:idd1];
        acc.Name=Namee;
        acc.Phone=Phone;
        acc.AccountNumber=numm;
         update acc;
        return acc;
    }

  
}