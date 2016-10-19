trigger zipCode on Account (before insert) {
String here;

for(Account a:trigger.new)
{
here=a.BillingCity;
}
Zip_Code__c zc=[select zip_code__c from Zip_Code__c where City__c=:here];

for(Account a:trigger.new)
{
a.BillingPostalCode=zc.Zip_Code__c;
}
}