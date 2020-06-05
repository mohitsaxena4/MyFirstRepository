trigger CountContactsOfAccount on Contact (After insert,After Update,After Delete,After Undelete) {
 Set<Id> parentIdsSet = new Set<Id>();
    List<Account> accountListToUpdate = new List<Account>();
    IF(Trigger.IsAfter){
        IF(Trigger.IsInsert || Trigger.IsUndelete  || Trigger.isUpdate){
            FOR(Contact c : Trigger.new){
                if(c.AccountId!=null){   
                   parentIdsSet.add(c.AccountId);
                   If(Trigger.isUpdate){
                       if(Trigger.oldMap.get(c.Id).AccountId != c.AccountId){
                          parentIdsSet.add(Trigger.oldMap.get(c.Id).AccountId);
                       }
                    }
                }
            }
        }
        IF(Trigger.IsDelete){
            FOR(Contact c : Trigger.Old){
                if(c.AccountId!=null){   
                   parentIdsSet.add(c.AccountId); 
                }
            }
        }
    }

    List<Account> accountList = new List<Account>([Select id ,Name,Total_Contacts__c, 
                                                  (Select id,AccountId,Name,Contacts_Count_Related_to_Account__c From Contacts 
                                                  where AccountId IN : parentIdsSet)
                                                  from Account Where id in:parentIdsSet]);
    FOR(Account acc : accountList){
        List<Contact> contactList = acc.Contacts;
        acc.Total_Contacts__c = contactList.size();
        accountListToUpdate.add(acc);
        system.debug('acc.Contacts-->'+acc.Contacts);
    }
    
    try{
        update accountListToUpdate;
    }catch(System.Exception e){
        
    }
}