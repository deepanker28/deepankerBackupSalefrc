public class searchRecords {
	@AuraEnabled 
    public static List<Contact> getBReocrds(){
        System.debug([select id,Name from Contact]);
        
        return [select id,Name from Contact limit 10];
    }
    
    @auraEnabled
    public static Account getrr(){
        return [select id,Name from Account limit 1];
    }
}