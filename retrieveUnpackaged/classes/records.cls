public class records {

    public PageReference enter() {
    selectedJunk.clear();
    for(accountwrapper1 accwrapper : junkList){
    if(accwrapper.selected==true)
    {
    Junk__c selecteddJunk=new Junk__c();
    selecteddJunk.AccountName__c=i;
    selecteddJunk.ManyName__c =accwrapper.jnk.ManyName__c ;
    insert selecteddJunk;
       }
       
       }
        return null; 
    }



             
             
   public records(ApexPages.StandardSetController controller) 
   {
   i=ApexPages.currentPage().getParameters().get('Accid'); 
   xyzz=[select ManyName__c from Junk__c];
   selectedJunk=[select ManyName__c from Junk__c where AccountName__c=:i];
   selectMany=[select Name from Many__c];
    }

   

 String i;
         public Junk__c jnk{get; set;}
 public accountwrapper1 abcc=new accountwrapper1();    
 public List<Junk__c> selectedJunk=new List<Junk__c>();
 List<accountwrapper1> junkList= new List<accountwrapper1>();
 public List<Junk__c>xyzz=new List<Junk__c>();
 public List<Junk__c> selectedJnk=new List<Junk__c>();
 public List<Many__c> selectMany=new List<Many__c>();


  

  public List<accountwrapper1> getXyz(){
  for(Junk__c j:[select  ManyName__c from Junk__c])
  junkList.add(new accountwrapper1(j));

    return  junkList;
    }
   
    public records(ApexPages.StandardController controller) {

    } 
         
     public class accountwrapper1
    {
        public Junk__c jnk{get; set;}
        public Boolean selected {get; set;}
        public accountwrapper1(Junk__c a)
        {
            jnk = a;
            selected = false;
        }
        public accountwrapper1()
        {
        }
        
}



}