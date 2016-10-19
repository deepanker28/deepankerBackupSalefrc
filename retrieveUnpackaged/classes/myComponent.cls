public class myComponent {
public transient ApexPages.Component headerComponent { get; set; }

public myComponent(){
Type t = Type.forName('Component.c.Survey');
if(t != null) {
            this.headerComponent = (ApexPages.Component)t.newInstance();
}
}
}