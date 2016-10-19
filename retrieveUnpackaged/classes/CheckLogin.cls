public class CheckLogin {
//PageRefernce pg;
//ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'Due date passed');
String id,ID1;
User__c a=new User__c();
public String userName{get;set;}
public String Password{get;set;}
public Boolean flag;
List<User__c> ss;
public User__c uN=new User__c();
String pdd;
public List<User__c> usr=new List<User__c>();  
    public CheckLogin(ApexPages.StandardController controller) {
    usr=[select id,User_Name__c,Password__c,First_Name__c,Last_Name__c from User__c ];
    pdd=ApexPages.currentPage().getParameters().get('ids');
    Flag=true;
    }
   
    public pageReference loginn()
    {
        pageReference pg,pg2;
        ss=new List<User__c>();
         ss=[select id from user__c where  user_name__c=:userName];
        
    
    for(User__c getUsr:usr)
        {
       
        if(userName==getUsr.User_Name__c)
            {
                if(Password==getUsr.Password__c){
             
         
              pg=new PageReference('/apex/userr');
            
              pg.getParameters().put('id',ss[0].id);
              pg.getParameters().put('ids',pdd);
              pg.setRedirect(true);
              flag=false;
              }
              }
             else 
                {
                pg2=new PageReference('/apex/Login');
              
                }
           }

         if(Flag)
           {
           apexPages.message msg =  new ApexPages.message(ApexPages.severity.WARNING,'Invalid User Name or Password');
              ApexPages.addmessage(msg);
              return pg2;
           }
          else{
         return pg;}       
   }
    
    
   
   public pageReference sendRegister()
       {
       pageReference pg2=new pageReference('/apex/Register');
       return pg2;
       }
}