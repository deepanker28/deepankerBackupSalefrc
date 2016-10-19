public class accnt { 


    public  list<Account> getAcca() {
     acc=[select id,name from account];
        return acc;
    }

    public list<Account> acc {get; set;}    
    public list<Notification__c> not1 {get;set;}    
    public accnt(){
       batchNotifications BatchNot=new batchNotifications();
           Database.executeBatch(BatchNot);
    }
     public list<Notification__c> getNotifications() {
        not1 = [select id,Name,Channel__c,Created_Date__c,Event_Type__c,Id__c,Record_Name__c from Notification__c];
        return not1;
    }
}