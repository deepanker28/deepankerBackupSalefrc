public class newCandidate {

    public String getAccount() {
        return null;
    }


    public PageReference save() {
        return null;
    }

    public Candidate__c noob{get;set;}

    
    
    
    public newCandidate()
    {
    noob=new Candidate__c();
    }
  
    public void createNew() {
                
    insert noob;
    
        
    }



  
   
   

    public List<Candidate__c> getRecords() 
    {
        List<Candidate__c> ls=[select Name,Address__c,Zip_Code__c from Candidate__c];
        return ls;
    }

}