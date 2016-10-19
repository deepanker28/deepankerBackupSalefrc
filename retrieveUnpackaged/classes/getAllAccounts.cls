public with sharing class getAllAccounts {
    List<Account> acc1;
    public PageReference incrementCounter() {
        acc1=[select id,Name from Account];
        return null;
    }
    public List<Account> getAcc(){
        return acc1;
    }
}