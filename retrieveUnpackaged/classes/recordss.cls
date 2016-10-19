public class recordss {
public Integer LimitSize=10;
//public Integer ;

public  Integer OffsetSize=0;
public Integer  totalRec1=[select count() from Many__c];
public  Integer totalRec=totalRec1;

public recordss()
{
        
        i=ApexPages.currentPage().getParameters().get('Accid'); 
     //   OffsetSize=0;
     //  xyzz=[select ManyName__c from Junk__c];
       selectedJunk=[select ManyName__c from Junk__c where AccountName__c=:i LIMIT :LimitSize OFFSET :OffsetSize];
    
}


    public void LastPage() {
    OffsetSize = totalRec- math.mod(totalRec,LimitSize);
        
    }


    public boolean getNxt() {
        if((OffsetSize + LimitSize) > totalRec)
        return true;
        else
        return false;
    }


    public void next() {
        OffsetSize=OffsetSize+LimitSize;
       
    }


    public void previous() {
        OffsetSize=OffsetSize-LimitSize;
       
    }


 public boolean getPrev()
{
if(OffsetSize==0)
return true;
else
return false;
}


    public void FirstPage() {
        OffsetSize=0;
        
    }


 
   public PageReference enter() {
   selectedJunk.clear();
    for(nMany accwrapper : getRec()){
    if(accwrapper .selected==true)
    {
    Junk__c selecteddJunk=new Junk__c();
    selecteddJunk.AccountName__c=i;
    selecteddJunk.ManyName__c =accwrapper .man.id;
    insert selecteddJunk;
       }
       }
        PageReference pg=new PageReference('/'+id1);
        return pg;
       
       }
      

 /*   public PageReference enter() {
   selectedJunk.clear();
    for(nMany accwrapper : recc){
    if(accwrapper .selected==true)
    {
    Junk__c selecteddJunk=new Junk__c();
    selecteddJunk.AccountName__c=i;
    selecteddJunk.ManyName__c =accwrapper .man.id;
    insert selecteddJunk;
       }

       }
       PageReference pg=new PageReference('/'+id1);
        return pg;
       
    }
*/  
 
    String i;
    public List<Junk__c> selectedJunk=new List<Junk__c>();
   public List<nMany> recc=new List<nMany>();
//    recc=Database.Query(select man , selected from nMany  LIMIT :LimitSize OFFSET :OffsetSize);
  
  
    public List<nMany> getRec() {
    List<nMany> recc=new List<nMany>();
    List<Many__c> ab=Database.Query('select Name from Many__c  LIMIT :LimitSize OFFSET :OffsetSize');
    for(Many__c a:ab)
        {
        recc.add(new nMany(a));
        }
        return recc;
    }


Id id1=ApexPages.currentPage().getParameters().get('Accid');
 
 
    public recordss(ApexPages.StandardController controller) {
       i=id1;
  //     xyzz=[select ManyName__c from Junk__c];
    selectedJunk=[select ManyName__c from Junk__c where AccountName__c=:i];
    }

 



public class nMany
{
public Many__c man{get;set;}
public boolean selected{get;set;}
Public nMany(Many__c m)
    {
    selected=false;
    man=m;
    }
}
  
}