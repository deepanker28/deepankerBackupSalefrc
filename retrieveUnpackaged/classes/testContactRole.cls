@isTest
public class testContactRole {
static testMethod void  abc()
	{
     Contact cc=new Contact();
        cc.FirstName='Deepankerr';
		cc.LastName='Dhimann11';
        cc.Phone='9646243333';  
       
        insert cc;
        
        Opportunity aa=new opportunity();
        
        aa.Name='Deepankerr Dhimann';
        aa.Email__c='dd.honey07@gmail.com';
        aa.PhoneNumber__c='964 624-2537';
        aa.CloseDate=date.newInstance(2014, 9, 15);
		aa.StageName='Closed Won';
        insert aa;
        
        OpportunityContactRole ocr=new OpportunityContactRole();
        ocr.ContactId=cc.id;
        ocr.OpportunityId=aa.Id;
        ocr.IsPrimary=true;
        ocr.Role='Evaluator';
        insert ocr;
         
        aa.Email__c='dd.honey07@fmail.com';
        update aa;
        
        
        
        
        
	}
}