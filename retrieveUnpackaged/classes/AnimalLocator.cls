public class AnimalLocator {
    public String getAnimalNameById(Integer a1){
       
        String a;
        Http http=new Http();
        HttpRequest request=new HttpRequest();
     	request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+a1);
        request.setMethod('GET');
        HttpResponse response=http.send(request);
        
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animals=(Map<String, Object>) results.get('animal');
           	
        	a=(String) results.get('name');
        	System.debug(a);
             return a;
        
    }

}