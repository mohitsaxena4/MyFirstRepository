public class StringArrayTest {
	public static list<string> generateStringArray (integer n)
    {
        List <string> lists= new list<string>();
        for (integer i=0;i<n;i++)
        {
            lists.add('Test '+i);
            system.debug(lists[i]);
        }
        return lists;
    }
}