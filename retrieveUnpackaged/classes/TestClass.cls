@isTest
public class TestClass
{
static testMethod void myTest()
{
    Zip_Code__c zc=new Zip_Code__c();
    zc.City__c='san francisco';
    zc.zip_code__c='10090';
    insert zc;
Account a=new Account();
    a.Name='Heloo2';
     a.BillingCity='san francisco';
insert a;



}
}