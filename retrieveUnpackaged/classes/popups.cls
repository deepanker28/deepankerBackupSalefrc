public class popups {

    public popups(ApexPages.StandardController controller) {

    }


String i;

public List<Account> aa=new List<Account>();
    public popups()
    {
    aa=[select id,Name from Account where id=:i];
    i=ApexPages.currentPage().getParameters().get('Accid');
    }

    public List<Account> getAccount() {
        return aa;
    }
public class contactss
{
public List<Account> getacc{get;set;}
}

}