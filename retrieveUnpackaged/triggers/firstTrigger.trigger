trigger firstTrigger on Opportunity (after insert,after update,before delete) {
   
String x;
Double price=0.0,price1=0.0,price2=0.0,price4=0.0,sub=0.0,price5=0.0,price6=0.0,price7=0.0,sub1=0.0;
        
 Contact cc=new Contact();
 Contact cc2=new Contact();
 
    if(Trigger.isInsert){
    for(Opportunity opp:Trigger.new)
    {
     
    cc=[select LastName,All_time_proposal__c,All_time_closes__c,All_time_discount__c,Six_Months_Proposal__c,Six_Months_Closes__c,Six_Months_Discount__c from Contact where id=:opp.RefContact__c];  
if(opp.StageName=='Closed Won'||opp.StageName=='Closed Lost'||opp.StageName=='Qualification'||opp.StageName=='Proposal/Price Quote')
    {
        if(cc.All_time_proposal__c==null)
            {
                cc.All_time_proposal__c=opp.Amount;
            }
        else
            {
                price=price+opp.Amount;
                cc.All_time_proposal__c+=price;
            }
        
         
        if(opp.CreatedDate>Date.today()-1)
            {
                if(cc.Six_Months_Proposal__c==null)
                {
                     cc.Six_Months_Proposal__c=opp.Amount;
                }
                else {   
                price5=price5+opp.Amount;
                cc.Six_Months_Proposal__c +=price5;
                    }
            }
      
           }      
if(opp.StageName=='Closed Lost')
    {
        if(cc.All_time_closes__c==null)
           {
        cc.All_time_closes__c=opp.Amount;
          }
        else
           {
            price1=price1+opp.Amount;
        cc.All_time_closes__c+=price1;
          } 
       
        
        if(opp.CreatedDate>Date.today()-1)
           {
               System.debug(cc.Six_Months_Closes__c);
                if(cc.Six_Months_Closes__c==null)
                {
                     cc.Six_Months_Closes__c=opp.Amount;
                }
                else {   
                price6=price6+opp.Amount;
                cc.Six_Months_Closes__c +=price6;
                    }
            }
        
        
        
        if(cc.All_time_discount__c==null)
            {
            cc.All_time_discount__c=opp.Discount__c;      
            }
        else
            {
            price2=price2+opp.Discount__c;
            cc.All_time_discount__c+=price2;    
            }

        
        if(opp.CreatedDate>Date.today()-1)
            {
                if(cc.Six_Months_Discount__c==null)
                {
                     cc.Six_Months_Discount__c=opp.Amount;
                }
                else {   
                price7=price7+opp.Amount;
                cc.Six_Months_Discount__c +=price7;
                    }
            }
        
        
    }
       
        
    }upsert cc;}
        
   if(Trigger.isUpdate)
    {
        Opportunity oppp=new Opportunity();
        Opportunity oppOld=Trigger.old[0];
        Opportunity oppNew=Trigger.new[0];
        
       Contact con2=[select LastName,All_time_proposal__c,All_time_closes__c,All_time_discount__c,Six_Months_Proposal__c,Six_Months_Closes__c,Six_Months_Discount__c from Contact where id=:oppNew.RefContact__c];
       

       if(oppOld.Amount==null)
       {
           oppp.Amount=oppNew.Amount;
       } 
        else{

        
        sub=oppNew.Amount-oppOld.Amount;
        sub1=oppNew.Discount__c-oppOld.Discount__c;
        }
           if(oppNew.CreatedDate>Date.today()-1)
           {
               con2.Six_Months_Proposal__c +=sub;
               con2.Six_Months_Closes__c +=sub;
               con2.Six_Months_Discount__c +=sub;
           }
        con2.All_time_proposal__c +=sub;
        con2.All_time_closes__c +=sub;
        con2.All_time_discount__c +=sub1;
        
            

            update con2;
    }
        
   if(Trigger.isDelete)
    {
        Opportunity opn=new Opportunity();
       opn=Trigger.old[0];
     COntact cc1=[select All_time_proposal__c,All_time_closes__c,All_time_discount__c,Six_Months_Proposal__c,Six_Months_Closes__c,Six_Months_Discount__c from contact where id=:opn.RefContact__c];
      cc1.All_time_proposal__c-=opn.Amount;
      cc1.All_time_closes__c-=opn.Amount;
        cc1.All_time_discount__c-=opn.Discount__c;
        if(opn.CreatedDate>Date.today()-1)
           {
        cc1.Six_Months_Proposal__c-=opn.Amount;
        cc1.Six_Months_Closes__c-=opn.Amount;
        cc1.Six_Months_Discount__c-=opn.Discount__c;
           }
    update cc1;
    }   

    
}