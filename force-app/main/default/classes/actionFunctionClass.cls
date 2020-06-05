public class actionFunctionClass
{
    public String name
    {
        get;
        set;
    }
    public string Email
        {
            get;
            set;
        }
public PageReference callMe()
{
     Contact con=new Contact(lastname=name,email=Email);
    insert con;
   //PageReference pr=new PageReference('/apex/successPage');
  // PageReference pr=new PageReference('http://www.google.com');
    PageReference pr=new Pagereference('/'+ con.id);
    return pr;
}
}