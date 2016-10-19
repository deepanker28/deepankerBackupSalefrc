public class RandomContactFactory {


    public static List<Contact> generateRandomContacts(Integer Nocon,String Last)
    	{
            List<Contact> con=new List<Contact>();
            Integer i=Nocon;
            con=[select FirstName from Contact limit:i];
            return con;
       
                
            
        }
    
    
    
}