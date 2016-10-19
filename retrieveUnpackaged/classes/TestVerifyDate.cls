@isTest
public class TestVerifyDate {
    
@isTest static void testDate()
	{
     Date x,z;
     Date y=Date.today(); 
	   
     x= VerifyDate.CheckDates(y,y.addDays(25));  
	 System.assertEquals(x, y.addDays(25));   
     z=VerifyDate.CheckDates(y,y.addDays(35)); 
     Integer totalDays = Date.daysInMonth(y.year(), y.month());
     Date lastDay = Date.newInstance(y.year(), y.month(), totalDays);
     System.assertEquals(z,lastday);     
    }
}