public with sharing class chutspaa {
public list<account> acc123{get;set;}
    public chutspaa(ApexPages.StandardController controller) {
acc123 = [select id,name,phone from account];
    }

}