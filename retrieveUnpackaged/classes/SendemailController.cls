public class SendemailController {
public String caseId {get;set;}

Public SendemailController(){
caseId = ApexPages.currentPage().getParameters().get('Id');
system.debug('case id->'+caseId );
}

Public Pagereference sendEmailFunction(){
Case getEmail = [SELECT Id, Contact.Email FROM Case WHERE id=:caseId];
if(getEmail.Contact.Email != null) {
String toaddress = getEmail.Contact.Email;
try {
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
String[] toAddresses = new String[] {toaddress};
String[] ccAddresses = new String[] {'sfdcsrini@gmail.com'};
mail.setToAddresses(toAddresses);
mail.setCcAddresses(ccAddresses);
mail.setReplyTo(toaddress);
mail.setSenderDisplayName('Name');
mail.setSubject('Testing email through apex');
mail.setBccSender(false);
mail.setUseSignature(true);
mail.setPlainTextBody('This is test email body. This mail is being sent from apex code');
//mail.setHtmlBody('<b> This is HTML body </b>' );

List<Messaging.Emailfileattachment> fileAttachments = new List<Messaging.Emailfileattachment>();
for (Attachment a : [select Name, Body, BodyLength from Attachment where ParentId = :caseId]){
Messaging.Emailfileattachment efa = new Messaging.Emailfileattachment();
efa.setFileName(a.Name);
efa.setBody(a.Body);
fileAttachments.add(efa);
//mail.setFileAttachments(new Messaging.EmailFileAttachment[] {efa});
}
mail.setFileAttachments(fileAttachments);

Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

} catch(Exception e) {}
}

PageReference reference = new PageReference('https://na15.salesforce.com/'+caseId);
reference.setRedirect(true);
return reference;
}

}