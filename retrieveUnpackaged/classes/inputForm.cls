public class inputForm {
 @AuraEnabled   
    public static void inputresult(String naam,Integer ag,String num){
        Student__c st=new Student__c();
        st.Name=naam;
     	st.age__c=ag;
        st.Class__c='a0M280000003U4B';
    	st.Contact_Number__c=num;
       
        Insert st;
    }
    

}