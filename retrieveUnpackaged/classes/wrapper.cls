public class wrapper {
    public List<Eminem> emm{get;set;}
     public List<Account> account{get;set;}

    public PageReference move() {
       
       for(Eminem em2:emm){
       if(em2.selected==true)
       {
       account.add(em2.acc);
       }
       }
       return null;
    }
    public List<Account> getAccount2() {
   if(account.size()>0)
        return account;
        else
        return null;
    }

   
    

    public String getContats2() {
        return null;
    }


    public String getContacts() {
        return null;
    }


    public List<Eminem> getAccount() {
       
                    if(emm==null){
        emm=new List<Eminem>();
        for(Account ac2:[select name from Account])
        {
        emm.add(new Eminem(ac2));
        }
        }
        return emm;
    }
    
    public class Eminem
    {
    public Account acc{get;set;}
    public Boolean selected{get;set;}
    public Eminem(Account a)
    {
    acc=a;
    selected=false;
    }
    }

}