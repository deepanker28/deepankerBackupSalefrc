public class AccountHandler
{

public static Account insertNewAccount(String pp)
{
try{
Account acc=new Account(name=pp);
insert acc;
System.debug('hello');
return acc;
}
catch (DmlException e) {
System.debug('error');
    return null;

}

}
}