public class ContactSearch {
	public static list<contact> searchForContacts (string lname,string mailadd)
    {
    	contact con=new contact(LastName=lname,MailingPostalCode=mailadd);
        list<contact> conlist=new list<contact>(
        [select id,LastName from contact where LastName =:lname AND MailingPostalCode=: mailadd]);
        system.debug(conlist);
        return conlist;
    }
}