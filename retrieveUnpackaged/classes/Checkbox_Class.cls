public class Checkbox_Class
{

    public List<Contact> getSelectedContacts() {
        List<Contact> sl=new List<Contact>();
        sl=[select name from Contact where Account.id in :selectedAccounts];
        return sl;
    }


    public List<Contact> getContact() 
    {
        if(selectedAccounts==null){
        List<Contact> ls=new List<Contact>();
        ls=[select Name from contact  ];
        return ls;}
        else
        {
        List<Contact> ls=new List<Contact>();
        ls=[select Name from contact where Account.id not in :selectedAccounts  ];
        return ls;}

        }
    







    List<accountwrapper1> accountList = new List<accountwrapper1>();
    List<Account> selectedAccounts = new List<Account>();
    
       public List<accountwrapper1> getAccounts()
    {
        for(Account a : [select Id, Name, AccountNumber, Phone from Account limit 10])
        accountList.add(new accountwrapper1(a));
        return accountList;
    }

    public PageReference getSelected()
    {
        selectedAccounts.clear();
        for(accountwrapper1 accwrapper : accountList)
        if(accwrapper.selected == true)
        selectedAccounts.add(accwrapper.acc);
        return null;
    }

    public List<Account> GetSelectedAccounts()
    {
        if(selectedAccounts.size()>0)
        return selectedAccounts;
        else
        return null;
    }    

    public class accountwrapper1
    {
        public Account acc{get; set;}
        public Boolean selected {get; set;}
        public accountwrapper1(Account a)
        {
            acc = a;
            selected = false;
        }
    }
}