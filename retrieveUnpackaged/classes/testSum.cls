@isTest
public class testSum {
public Static void TestSm()
	{
        sum a=new sum();
        test.startTest();
        Integer value=a.sm(5,6);
        test.stopTest();
        System.assertEquals(12, value, 'wrong value');
    }
}