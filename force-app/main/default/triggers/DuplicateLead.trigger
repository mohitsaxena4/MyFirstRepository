trigger DuplicateLead on Lead (before insert,before update) {
    Set<string> LdMail = new Set<String>();
    Set<String> LdPhone = new Set<String>();
    for (Lead ld : trigger.new)
    {       
        LdMail.add(ld.Email);
        LdPhone.add(ld.Phone);
    }
    list <Lead> ldList = [select id,Email,Phone from Lead where Email IN : LdMail OR Phone IN:LdPhone];
    system.debug('ldList-->'+ldList);
    
    for (Lead duplicateld : Trigger.new)
    {
        //System.debug('testing  '+duplicateld.Id);
        if (ldList.size() > 0)
        {
            if (LdMail.contains(duplicateld.Email) && LdPhone.contains(duplicateld.Phone)) {
                duplicateld.addError('Duplicacy Found');
            }
        }
    }	
}