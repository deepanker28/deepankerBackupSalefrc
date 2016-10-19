trigger addQuotes on OpportunityLineItem (before insert) {
Opportunity op=new Opportunity();
op=Database.query('SELECT Id FROM Opportunity where id="00628000004chdL"');
Map<Opportunity,OpportunityLineItem> op1=new Map<Opportunity,OpportunityLineItem>();
for(OpportunityLineItem opp:trigger.new)
{

op1.put(op,opp);
}
Map<Opportunity,Quote> op2=new Map<Opportunity,Quote>();
Quote qtObj=new Quote();
qtObj=Database.query('select id from Quote where id="0Q028000000CzgR"');
for(OpportunityLineItem opp:trigger.new)
{
op2.put(op,qtObj);
}
}