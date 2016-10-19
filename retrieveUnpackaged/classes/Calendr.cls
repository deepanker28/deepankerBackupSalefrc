public class Calendr {
Integer i,day=1;
String s=String.valueOf(day);
List<List<String>> rows{get;set;}

List<String> column{get;set;}
List<String> column1{get;set;}
List<String> column2{get;set;}
List<String> column3{get;set;}
List<String> column4{get;set;}
List<String> column5{get;set;}
   
Date dateObj;
DateTime getcurdate =  DateTime.newInstance(2015,11,1,8,46,50);

Integer dy=dateObj.day();
Integer mnth=dateObj.month();
Integer year=dateObj.year();

Integer daysinmonth = Date.daysInMonth(2015,11);

Integer a,count;

    public List<List<String>> getWeekdays() {
    rows=new List<List<String>>();
    column=new List<String>();
    for(i=0;i<7;)
    column.add(''+day++);
    column.add('');
    column.add('');
    column.add('');
    column.add('');
    column.add('');
    column.add('');
    rows.add(column);
   
   column1=new List<String>();
   column1.add('4');
   column1.add('');
   column1.add('');
   column1.add('');
   column1.add('');    
   column1.add('');
   column1.add('');
   rows.add(column1);      
      
   column2=new List<String>();
   column2.add('4');
   column2.add('');
   column2.add('');
   column2.add('');
   column2.add('');    
   column2.add('');
   column2.add('');
   rows.add(column2);     
  
  column3=new List<String>();
   column3.add('4');
   column3.add('');
   column2.add('');
   column2.add('');
   column2.add('');    
   column2.add('');
   column2.add('');
   rows.add(column2);  
     return rows;

    }
}