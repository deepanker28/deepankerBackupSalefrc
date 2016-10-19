public class edt {
String j;
public List<Contact> cc1=new List<Contact>();

public edt(ApexPages.StandardController controller) {
    i=ApexPages.currentPage().getParameters().get('id');
    a=[select Name,Phone,Fax,Type,NumberOfEmployees,Website,Site,Sic,Rating,BillingStreet,ShippingStreet,BillingState,ShippingState,BillingPostalCode,ShippingPostalCode from Account where id=:i];
    }

    public pageReference editt() {
    
     update a;
        return null;
    }
    
    public PageReference selectContact()
    {
    j=ApexPages.currentPage().getParameters().get('getContact');
    //  cc1=['select Name from Contact where Account.parentId=i'];
      return null;
    }

String i;
public List<Account> a=new List<Account>();
    
  /*  public List<Account> getEditt()
        {
        update a;
        return a;
        } */
    public class chk
    {
    public Contact cc{get;set;}
    public Boolean box{get;set;}
    public chk(Contact c)
    {
    box=false;
    cc=c;
    }
    }
}