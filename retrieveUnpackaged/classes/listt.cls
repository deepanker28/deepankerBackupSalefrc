public class listt {
public List<Contact> a{get;set;}
public account acc;
public List<cont> contact1{get;set;}
public List<cont> selectedContact{get;set;}
public account parentId{get;set;}
public String test{get;set;}
 
    public listt(ApexPages.StandardController controller) {
    
    this.acc=(Account) controller.getRecord();
    
    }
    
    public pageReference saveandnew()
    {
    insert acc;
    pageReference pr=new pageReference('https://c.ap2.visual.force.com/apex/new_account');
    return pr;
    }
    
   public pagereference getContact()
        {
        String qry='select Name from Contact where accountId=\''+acc.parentId+'\'';
        System.debug(qry);
        test=qry;
        a=Database.query(qry); 
      //  a=[select Name from Contact where AccountId=:acc.ParentId];
        contact1=null;
        contact1=new List<cont>();
        for(Contact cc:a)
            {
            contact1.add(new cont(cc));
            }
        return null;
        }
       
        public List<Contact> getContact1()
            {
            List<Contact> ab=[select name from Contact where Accountid=:acc.parentId];
            return ab;
            }
        
   public List<cont> getContacts()
       {
       for(Contact c:a)
           {
          contact1.add(new cont(c));
           }
           return contact1;
       }
        
 class cont
    {
    public Boolean selectt{get;set;}
    public Contact nm{get;set;}
    public cont(Contact cn)
        {
        selectt=false;
        nm=cn;
        }   
    }

}