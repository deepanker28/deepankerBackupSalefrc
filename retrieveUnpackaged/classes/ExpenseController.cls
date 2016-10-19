public with sharing class ExpenseController
{
	@AuraEnabled
	public static List<Expense__c> getExpenses(){
		return [SELECT Id,Name,Amount__c,Client__c,Date__c,Reimbursed__c,CreatedDate FROM Expense__c];
}

	@AuraEnabled
	public static Expense__c saveExpense(Expense__c expense){
		//Perform isUpdateable() check here
		upsert expense;
		//Step 5: Enable Input for New Expenses Quick Start
		return expense;
	} 
    
}