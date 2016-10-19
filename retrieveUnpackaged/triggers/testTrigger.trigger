trigger testTrigger on Account (after insert) {
List<Account> acc=new List<Account>();
    for(Account a:trigger.new)
    {
        Account acc1=new Account();
        acc1.Id=a.Id;
        acc1.Name='ttt';
        acc.add(acc1);
    }
    if(acc.size()>0)
    {
        update acc;
    }
}