trigger copy1 on Contact (before insert) {
Contact cc=new Contact();
    for(Contact c:trigger.new)
	{
    cc.AccountId=c.AccountId;
    }
    Account ls=[select BillingCity from Account where Id=:cc.AccountId];
    for(Contact c:trigger.new)
    {
        c.MailingCity =ls.BillingCity;
        
    }
}