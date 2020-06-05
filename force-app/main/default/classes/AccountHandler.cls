public class AccountHandler {
    
    public static Account insertNewAccount(string accname)
    {
        	Account acc=new Account();
        	acc.Name=accname;
      try{  
        	insert acc;
        	/*list <account> acclist=new list<account>([select name,type,industry,id from account where name =:accname]);
        	system.debug(acclist);
        	return acclist;*/
    	 }
      catch (DmlException e)
    	 {
     		System.debug('A DML exception has occurred: ' +e.getMessage());  
            return null;
    	 }
        return acc;
	}
}