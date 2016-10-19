public class homePage {

 


public String var{get;set;}

    public PageReference registerr() {
        pageReference pg=new pageReference('/apex/Register');
        return pg;
    }


    public PageReference loginn() {
        pageReference pg=new pageReference('/apex/Login');
        return pg;
    }
   


public List<Product2> prod=new List<Product2>();

    public homePage()
    {
    prod=[select Name,Image__c,Image_Name__c,Price__c from Product2];
    }
    
       
  
  
    public List<Product2> getItems() 
    {
        return prod;
    }
      public PageReference product() {
        pageReference pg=new pageReference('/apex/product');
         String id =ApexPages.currentPage().getParameters().get('a');
         
         pg.getParameters().put('id',id);
         pg.setRedirect(true);
        return pg;
    }

}