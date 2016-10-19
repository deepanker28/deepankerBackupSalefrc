@isTest
public class totalPrice 
{
    static testmethod void testupdate()
    {
        Opportunity opp=new Opportunity(name='testOpportunity',CloseDate=System.today(),StageName='prospecting');
        insert opp;
      Shipment__c a = new Shipment__c(name='test1',Price__c=100.0,Oppotunity_name__c=opp.id);
        Shipment__c b = new Shipment__c(name='test2',Price__c=200.0,Oppotunity_name__c=opp.id);
        insert a;
        insert b;
        a.Price__c=200.0;
        b.Price__c=300.0;
        update a;
        update b;
        delete a;
        delete b;
        
    }

}