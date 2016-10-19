Global class batchNotifications implements database.batchable<sObject>{
   
   global batchNotifications(){
   
   Date yesterdayDate=system.today().addDays(-1);
   
   }
    
    global Database.queryLocator start(database.batchablecontext BC){
        
        return null;
  
    }
    
    global void execute(database.batchablecontext bc, list<Contact> conMap){
            
                    
      }
      global void finish(Database.BatchableContext BC){
   
      }
}