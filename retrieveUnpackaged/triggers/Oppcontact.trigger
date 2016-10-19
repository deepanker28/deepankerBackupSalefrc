trigger Oppcontact on Opportunity (before insert, after update, before delete) {

    if(Trigger.isdelete)
    {
        Opportunity oldop = Trigger.old[0];
        Contact con1=[select all_time_proposal__c from contact where id=:oldop.RefContact__c];
        if(Trigger.isdelete)
        {
            con1.all_time_proposal__c -= oldop.amount; 
        } 
        update con1;
     }
    if(Trigger.isUpdate)
    {
        Opportunity newop = Trigger.new[0];
        Contact con2=[select all_time_proposal__c from contact where id=:newop.RefContact__c];
        Opportunity oldop = Trigger.old[0];
        if(newop.amount > oldop.amount)
        {
            con2.all_time_proposal__c +=newop.amount-oldop.amount; 
        }
        else
        {
            con2.all_time_proposal__c -=oldop.amount-newop.amount; 
        }
        update con2;
    }
   
   if(Trigger.isInsert)
   {
   
   Opportunity op= Trigger.new[0];
  
    Contact con = [select name, all_time_proposal__c,all_time_closes__c, all_time_discount__c from contact where id=:op.RefContact__c];
    for(Opportunity opp : Trigger.new)
    {
         opp.Project_Value__c= opp.amount - opp.discount__c ;
        if(opp.RefContact__c != null)
        {
            if(opp.StageName == 'Closed Won' || opp.StageName == 'Closed Lost' ||opp.StageName == 'Proposal/Price Quote' ||opp.StageName == 'Qualification')
            {       
            
                if(opp.StageName =='Closed Won')
                {
                        if(con.all_time_closes__c==null)
                        {
                            con.all_time_closes__c=opp.amount;
                        }
                        else
                        {
                            con.all_time_closes__c += opp.amount;
                        }
                        if( con.all_time_discount__c == null)
                        {
                            con.all_time_discount__c = opp.Discount__c;
                        }
                        else
                        {
                            con.all_time_discount__c += opp.Discount__c;
                        }
                }         
                                                
                if(con.all_time_proposal__c == null)
                {
                    con.all_time_proposal__c= opp.amount;
                }
                else{
                    con.all_time_proposal__c += opp.amount;
                }
            } // inner if
            
            
        } //outer if
        
    } //end for loop
     update con;
 }
    
   
   
}