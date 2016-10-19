public class getPro {


String iddd = ApexPages.currentPage().getParameters().get('id');

public List<Product2> pd=new List<Product2>();

public getPro()
    {
    pd=[select id,Name,Image__c,Image_Name__c,Price__c from Product2 where id=:iddd];
    }

public List<Product2> getNamee()
    {
    return pd;
    }
public PageReference AddCart() {
    pageReference pg = new pageReference('/apex/Login'); 
    pg.getParameters().put('ids',pd[0].id);
    pg.setRedirect(true);
        return pg;
    }
    

}