public class sendEmail {
	String opp;
    Integer count=0;
  //  Opportunity pp=new Opportunity();
    public sendEmail(ApexPages.StandardController controller) 
	{        
	opp=ApexPages.currentPage().getParameters().get('id');
    count= [SELECT count() FROM Attachment where id=:opp]; 
        System.debug(count);
    }

    List<Attachment> att=new List<Attachment>();
   // public String opp1;
    List<Opportunity> opp1=new List<Opportunity>();
    
    public String[] emaill;
    
    
    
    public PageReference mail() {
    
    
        try{
     opp1=[select Email__c from Opportunity where id=:opp];
     att=[select Name,ParentId,Body from Attachment where ParentId=:opp];
  
        if(att!=null)
            {
            Messaging.SingleEmailMessage mail1 = new Messaging.SingleEmailMessage();
            String[] ccAddresses = new String[] {'dd.honey07@gmail.com'};
              
    for(Opportunity b:opp1)
           {
           emaill[0]=b.Email__c;
           }
           
            mail1.setToAddresses(ccAddresses);
            mail1.setCcAddresses(ccAddresses);
            mail1.setBccSender(false);
            mail1.setPlainTextBody('This is test email body. This mail is being sent from apex code'+count);
            List<Messaging.Emailfileattachment> fileAttachments=new List<Messaging.Emailfileattachment>();
            for(Attachment a:att)
                {
                Messaging.Emailfileattachment img=new Messaging.Emailfileattachment();
                img.setFileName(a.Name);
                //img.setBody(a.body);
                img.setBody(a.body);
                fileAttachments.add(img);
                }
                mail1.setFileAttachments( fileAttachments);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail1 });
            }
            
           /* else
                {
                pp.addError('See error  message will appear when u insert or update an account');

                } */
                }
        catch(Exception e){} 
        PageReference reference = new PageReference('https://na15.salesforce.com/'+opp);
            reference.setRedirect(true);
    
            
            return reference;  
              }
              


    


    

}