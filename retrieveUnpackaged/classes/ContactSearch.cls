public class ContactSearch 
{
     public static List<Contact> searchForContacts(String s1,String s2)
     {
         List <contact> ls=new List<Contact>(); 
         ls= [ Select ID,Name from Contact where lastName=:s1 and MailingPostalCode=:s2];
         return ls;
     }

}