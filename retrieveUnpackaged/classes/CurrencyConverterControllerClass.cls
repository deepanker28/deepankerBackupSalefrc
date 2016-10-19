public with sharing class CurrencyConverterControllerClass{
	
	
    
    @AuraEnabled
    public static Double getCurrencyy(String abc,String xyz) 
    {
        String url = 'https://globalcurrencies.xignite.com/xGlobalCurrencies.json/GetRealTimeRate?Symbol='+abc+xyz+'&_token=4A90445E57684A838447E65F5C27B56B';
      //  url +=
         
		System.debug(abc);  
        System.debug(xyz);
        Http http = new Http();
         
        
        HttpRequest req = new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
         
        HttpResponse res = new HttpResponse();
         
        
        if((abc != null && abc.trim().length() > 0) && (xyz != null && xyz.trim().length() > 0))
            res = http.send(req);
        else
            return null;
         
        Map<String, object> response = (Map<String, object>)JSON.deserializeUntyped(res.getBody());
        //String text = (String)response.get('Text');
        Double nom =  (Double)response.get('Mid');
           System.debug(nom); 
       // String a= sourceCode+targetCode;
       // sy
        return nom;
        
    }
}