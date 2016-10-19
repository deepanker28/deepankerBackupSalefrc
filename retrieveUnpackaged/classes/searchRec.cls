public class searchRec {
	@auraEnabled
    public static list<contact> recordss(){
        return [select id,Name from contact limit 5];
    }
}