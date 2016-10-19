public with sharing class Tester {
public List<Integer> records{get;set;}
Integer a;
public Tester()
{
    records = new List<Integer>();
    for(a=1;a<=31;a++)
    {
    records.add(a);
    }
   
}
}