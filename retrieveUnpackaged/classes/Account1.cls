public class Account1 {

    public Account Acc1 { get; set; }
    public list<Account> acclist = new list<Account>();
    public  Account1()
    {
       acclist = [select BillingStreet , BillingCity , BillingPostalCode , Name from Account];
       Acc1 = new Account();
    }
    public list<Account> getlist()
       {
         return acclist;
       }
    
    
    

}