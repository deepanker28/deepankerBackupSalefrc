@RestResource(urlMapping='/Test')
global with sharing class testRest {
 @HttpPost
global static String doPost(String firstName, String lastName, 
    String phone, String email) {
    Lead lead = new Lead();

    String sta;
    lead.FirstName = firstName;
    lead.LastName = lastName;
    lead.phone = phone;
    lead.Email = email;
    lead.Company = 'agf';
    lead.Status = 'Open - Not Contacted';

    Database.SaveResult db = Database.insert(lead, false);
    if(db.isSuccess())
    {
        sta = 'Success';
    }
    else
    {
        sta = 'Error';
    }

    return sta;
}
}