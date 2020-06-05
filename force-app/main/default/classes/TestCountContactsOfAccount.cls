@isTest
private class TestCountContactsOfAccount {
	static testmethod void testCountContactsOfAccount()
    {
        Account acc=new Account();
        acc.Name='Test';
        insert acc;
        
        list<contact> conlist = new list<contact>();
        for (integer i=1;i<=10;i++){
        contact con = new contact();
        con.Salutation='Mr.';
        con.LastName='Test'+i;
        con.AccountId=acc.id;
        conlist.add(con);
        system.debug('con-->'+con);
        }
	if (conlist.size()>0)
	insert conlist;        
    }
}