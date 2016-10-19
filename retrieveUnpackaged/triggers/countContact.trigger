trigger countContact on Contact (after insert,after delete) {
	String a;
    Integer y;
   // if(Trigger.isInsert||Trigger.isUpdate)
    List<Contact> ss=new List<Contact>();    
    ss=Trigger.isInsert?Trigger.new:Trigger.old;
        
    {
        
        for(Contact c:ss)
        {
            a=c.AccountId;
            
        }
        List<Contact> sc=[select Name from Contact where Accountid=:a];
    for(Contact c:sc)
    {
        y=sc.size();
    }
    }
    List<Account> r=[select num_of_contacts__c from Account where Id=:a];
    for(Account t:r)
    {
        t.num_of_contacts__c=y;
    }
    
    update r;
}