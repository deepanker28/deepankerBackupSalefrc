public class AccountListAuraController {
    @AuraEnabled
    public static List<Account> getAccounts(){
        return [select id,Name,Description,Website from Account Order by Name];
    }

}