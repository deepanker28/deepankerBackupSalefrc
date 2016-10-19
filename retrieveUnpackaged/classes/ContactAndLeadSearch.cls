public class ContactAndLeadSearch {
  
	public static List<List< SObject>> searchContactsAndLeads(String x)
    	{
            List<List<SObject>> search = [FIND 'Smith' IN Name Fields returning Contact(Name) ,Lead(Name)];
            return search;
                }
}