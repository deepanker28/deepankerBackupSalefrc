public class convert {

public String CCompany{get;set;}
public List<Account> acc=new List<Account>();

    public convert(ApexPages.StandardController controller) {
    acc=[select Name from Account];
    }

}