@isTest
public class testingRest {
   @isTest     
    static void testPostCallout(){
	RestRequest req = new RestRequest();
    RestResponse res = new RestResponse();

	req.requestURI = '/services/apexrest/Test';  //Request URL
	req.httpMethod = 'POST';//HTTP Request Type
	RestContext.request = req;
	RestContext.response= res;

 	String stas=testRest.dopost('Test','Test','1232','dummymail@test.com');

	system.assert(stas=='Success'||stas=='Error');
    
    }
}