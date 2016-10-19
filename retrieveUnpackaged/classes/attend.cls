public class attend {


    Date selectedDate;
    
    public List<Student__c> studentOB=new List<Student__c>();

    public List<Attendance__c> allStudents { get; set; }    

    public List<SelectOption> getMonth=new List<SelectOption>();

    public String selectDate { get; set; }

    public String selectMonth { get; set; }
    
    public String selectYear { get; set; }

  //  public String datename { get; set; }

    public String selectClass { get; set; }
    
    
    public List<Class__c> classs=new List<Class__c>();
   public attend()
       {
       classs=[select id,Name from Class__c];
       }
   
    public List<SelectOption> getItems() {
        List<SelectOption> options=new List<SelectOption>();
        for(Class__c cls:classs)
            {
            options.add(new SelectOption(cls.id,cls.Name));
            }
        return options;
    }
    
     public List<SelectOption> getItems1() {
        List<SelectOption> months=new List<SelectOption>();
        months.add(new SelectOption('1','january'));
        months.add(new SelectOption('2','febuary'));
        months.add(new SelectOption('3','march'));
        months.add(new SelectOption('4','april'));
        months.add(new SelectOption('5','may'));
        months.add(new SelectOption('6','june'));
        months.add(new SelectOption('7','july'));
        months.add(new SelectOption('8','august'));
        months.add(new SelectOption('9','september'));
        months.add(new SelectOption('10','october'));
        months.add(new SelectOption('11','november'));
        months.add(new SelectOption('12','december'));
        return months;  
    }
    
    public List<SelectOption> getItems2() {
    getMonth=getItems1();
    List<SelectOption> datee=new List<SelectOption>();
  //  if( getItems1().months=='january'||getItems1().months =='march'||getItems1().months =='may'||getItems1().months =='july'||getItems1().months =='september'||getItems1().months =='november')
  //  {
    for(Integer i=1;i<=31;i++)
        {
        datee.add(new SelectOption(''+i,''+i));
        }
        return datee;
    }       
  //}
  
      public List<SelectOption> getItem3()
          {
          List<SelectOption> yearr=new List<SelectOption>();
          for(Integer j=2000;j<=2020;j++)
              {
              yearr.add(new SelectOption(''+j,''+j));
              }
              return yearr;
          }

    public PageReference getStudent() {
        
        selectedDate=Date.newInstance(Integer.valueOf(selectYear),Integer.valueOf(selectMonth),Integer.valueOf(selectDate));
        studentOB=[select id,Name from Student__c where Class__c=:selectClass ];
        allStudents=new List<Attendance__c>();
        for(Student__c st:studentOB)
            {
            List<Attendance__c> att=[select id,Class__c,Date__c,Present__c,student__c,Teacher__c from Attendance__c where Date__c=:selectedDate  and Student__c=:st.id];
            if(att.size()>0) 
                {
                allStudents.add(att[0]);
                } 
             else
                 {
                 Attendance__c att2=new Attendance__c();
                 
                 att2.Class__c=selectClass;
                 att2.Date__c=selectedDate;
                 att2.Present__c='Absent';
                 att2.Student__c=st.id;
                 allStudents.add(att2);
                 } 
                
            }
        return null;
    }
    public void submit() {
        upsert allStudents;
    }
  
}