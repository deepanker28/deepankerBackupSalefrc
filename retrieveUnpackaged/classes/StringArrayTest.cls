public class StringArrayTest
{
public static List<String> generateStringArray(Integer j)
{

List<String> ls=new List<String>();
for(Integer i=0;i<j;i++)
{
    ls.add('Test '+i); 
}
    
    return ls;
}
}