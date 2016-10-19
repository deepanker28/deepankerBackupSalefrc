trigger ZC on Zip_Code__c (before insert) {
for(Zip_Code__c z:trigger.new)
	{
    z.zip__c=z.zip_code__c;
	}
    
}