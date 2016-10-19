public class record {
    public Account account{get;set;}
    public List<Contact> contacts{get;set;}
    public boolean output{get;set;}
    public boolean input{get;set;}
    
    public record(ApexPages.StandardController controller) {
    account=[select Name from Account where id=:ApexPages.currentPage().getParameters().get('id')];
    contacts=[select Name,Phone from Contact where Contact.Accountid=:ApexPages.currentPage().getParameters().get('id')];
    output=true;
    input=false;
    }
    public void abc()
    {
      input=true;
      output=false;
      
    }
     public void xyz()
    {
     update contacts;
     input=false;
     output=true; 
    }

}