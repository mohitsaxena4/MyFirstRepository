@isTest
private class DuplicateLeadTest {
    static testmethod void testDuplicateLead() {
    List<Lead> ldList = new List<Lead>();    
        for (integer i=1;i<=5;i++){
        Lead ld = new Lead();
        ld.LastName='Training'+i;
        ld.Company='Company';
        ld.Status='Open-Not Contacted';    
        ld.Phone='213456789'+i;
        ld.Email='training'+i+'@gmail.com';
        ldList.add(ld);
        }
        system.debug('ldList-->'+ldList);
        
    	Lead ld1 = new Lead();
    	ld1.LastName='Testing1';
    	ld1.Company='Company1';
    	ld1.Status='Open-Not Contacted';
    	ld1.Phone='1234567891';
    	ld1.Email='test@gmail.com';
    	ldList.add(ld1);
        system.debug('ldList-->'+ldList);
        Database.insert(ldList,False);
    }
    
}