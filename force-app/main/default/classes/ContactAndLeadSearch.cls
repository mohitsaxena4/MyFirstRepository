public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(string param)
    {
        List<List<SObject>> searchList = [FIND :param IN ALL FIELDS RETURNING Contact(Name), Lead(LastName)];
        system.debug(searchList);
        return searchList;
    }

}