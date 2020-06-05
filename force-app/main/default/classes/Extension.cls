public class Extension {
    public integer num1{get;set;}
    public integer num2{get;set;}
    integer res;
    public extension (ApexPages.StandardController std)
    {
        
    }
    
    public string getName()
        {
         	return 'MS';   
        }
    public integer getRes()
        {
         	return res;   
        }
    public void result()
    {
        res=num1+num2;
    }
}