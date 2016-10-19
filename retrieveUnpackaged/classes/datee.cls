public class datee {
List<Position__c> dt=new List<Position__c>();
 DateTime dT1 = System.now();
 Date myDate = dT1.Date();
    public datee(ApexPages.StandardController controller) {
    
    }
public Date getDateee()
    {
    
    return myDate;
    }
}