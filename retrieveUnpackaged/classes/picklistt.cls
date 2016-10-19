public class picklistt { 
    
public String contact { get; set; }
public String acct { get; set; }

   // Account Picklist    
   public List<SelectOption> getRecords() {
        List<SelectOption> so = new List<SelectOption>();
            so.add(new SelectOption('','--None--'));
        for( Account acc1 : [select id,Name from Account] ){
            so.add(new SelectOption(acc1.id,acc1.Name));
       }
        return so;
    }
    
    // Contact List
    public List<SelectOption> getConRecord() {      
        System.debug(acct);
        List<SelectOption> so1=new List<SelectOption>();
        so1.add(new SelectOption('','--None--'));
        if(acct != null){
            for(Contact conn:[select Id,Name from Contact where AccountId=:acct ])
            {
                so1.add(new SelectOption(conn.id,conn.Name));
            }
        }      
        return so1; 
    }

}