trigger ContactRol on Opportunity (after update) 
{
    if(checkRecursive.runOnce())
    {
    String nam,email,PhnNumber;
    String x;
    List<Contact> ls=new List<Contact>();
   List<Opportunity> oo=new List<Opportunity>();
    List<OpportunityContactRole> cntctRole=[select ContactId from OpportunityContactRole where isPrimary=true];
     for(Opportunity opp:trigger.new)
     {
  //   x=opp.id;   
     }
    oo=[select ContactName__c,Email__c,PhoneNumber__c from Opportunity where id=:trigger.newmap.keyset()];
    
    for(OpportunityContactRole a:cntctRole)
    {
        x=a.contactId;
    }
        ls=[select Name,Email,Phone from contact where id=:x];
    
    for(COntact cc:ls)
    {
       PhnNumber=cc.Phone;
        email=cc.Email;
        nam=cc.Name;
        
    
    for(Opportunity op:oo)
    {
        op.Email__c=email;
        op.PhoneNumber__c=PhnNumber;
        op.Name=nam;
     }   
    }
       
    update oo;
}
}