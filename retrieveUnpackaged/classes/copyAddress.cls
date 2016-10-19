public class copyAddress {
Account acc= new Account();
Contact con=new Contact();    
    public copyAddress()
    	{
            acc=[select ShippingStreet,ShippingCity,ShippingState,ShippingCountry,ShippingPostalCode from Account where Id=:con.AccountId];
        }
   public Contact abc()
   	{
        
        con.MailingCity=acc.ShippingCity;
        con.MailingCountry=acc.ShippingCountry;
        con.MailingPostalCode=acc.ShippingPostalCode;
        con.MailingState=acc.ShippingState;
        con.MailingStreet=acc.ShippingStreet;
        upsert con;
        return con;
    }
    
}