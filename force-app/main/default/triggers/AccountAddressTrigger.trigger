trigger AccountAddressTrigger on Account (before insert,before update) 
{
	if (trigger.isInsert)
        {
          for (Account ac :Trigger.New)
          {
            if (ac.BillingPostalCode!=Null && ac.Match_Billing_Address__c==true)
            {
                ac.BillingPostalCode=ac.ShippingPostalCode;
                //insert ac;
            }
          }
        }
     if (trigger.isUpdate)
     	{
          for (Account ac :Trigger.old)
          {
             if (ac.BillingPostalCode!=Null && ac.Match_Billing_Address__c==true)
            {
                ac.BillingPostalCode=ac.ShippingPostalCode;
                //update ac;
            }
          }   
        }   
}