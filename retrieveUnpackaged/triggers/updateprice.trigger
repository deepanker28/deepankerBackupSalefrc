trigger updateprice on shipment__c (after insert,after update,before delete) 
{
    Double price=0.0;
    String x;
    if(Trigger.isInsert||Trigger.isUpdate)
    {
    for(shipment__c a: trigger.new)
    {   
           x=a.oppotunity_name__c;
    } 
    
list<shipment__c> abc=[SELECT price__c FROM shipment__c WHERE oppotunity_name__c = :x];
      for(Shipment__c a: abc)
    {
        price+=a.price__c;
    }
    }
  if(Trigger.isDelete)
    {
    for(shipment__c a: trigger.old)
    {   
           x=a.oppotunity_name__c;
    } 
list<shipment__c> abc=[SELECT price__c FROM shipment__c WHERE oppotunity_name__c = :x];
        if(abc.size()!=1)
        {
        abc.remove(abc.size()-1);
            for(Shipment__c a: abc)
    {
        price+=a.price__c;
    }
        }
    //    else
     //   {
     //       price=0.0;
      //  }
    }
    list<opportunity> l=[SELECT total__c FROM opportunity WHERE ID=:x];
    for(Opportunity a:l)
    {
        a.total__c=price;
    }
  update l;
}