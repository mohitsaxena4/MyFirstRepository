public class BirlaCorpHelperCls {
    /*
    
    <-----------------------------Birla Corp-----------------------------------------> 
    
    //Update Current Month Sales value And Current Month Quantity Value (Roll-Up on SAP Account)
    
    public static Boolean runOnceAfter2 = true;
    public static void updateCurrentMonthSalesQtyValue(List<Invoice__c> invoiceList){
        runOnceAfter2 = false;
        Map<ID,Double> mapInvoiceNetValue = new Map<ID,Double>();
        Map<ID,Double> mapInvoiceQtyValue = new Map<ID,Double>();
        List<Account> listAccToUpdate = new List<Account>();
        Set<String> accIdSet = new Set<String>();
        for(Invoice__c inv : invoiceList){
            if(String.isNotBlank(inv.Customer__c))
                accIdSet.add(inv.Customer__c);
            
        }
        if(accIdSet!=null && accIdSet.size()>0){
            for(AggregateResult aggr :[select customer__c,SUM(Net_Value_in_Document_Currency__c),SUM(Actual_Invoiced_Quantity__c) from Invoice__c 	
                                       where CALENDAR_MONTH(Invoice_Created_Date_SAP__c)  =: Date.Today().Month() 
                                       And CALENDAR_Year(Invoice_Created_Date_SAP__c)  =: Date.Today().Year() AND customer__c IN : accIdSet group by customer__c]){
                                           mapInvoiceNetValue.put((ID)aggr.get('customer__c'),(Double)aggr.get('expr0'));
                                           mapInvoiceQtyValue.put((Id)aggr.get('customer__c'),(Double)aggr.get('expr1'));
                                       }
            if(mapInvoiceNetValue.size()>0 && mapInvoiceNetValue!=null){
                for(Account acc : [Select id,Net_sales_Value_of_the_month_new__c from account where id IN: accIdSet]){
                    Double totalAmount = mapInvoiceNetValue.get(acc.id);
                    Double totalQty = mapInvoiceQtyValue.get(acc.id);
                    acc.Net_sales_Value_of_the_month_new__c = totalAmount;
                    acc.Net_sales_value_of_the_month__c=String.valueOf(totalQty);
                    listAccToUpdate.add(acc);
                }
                if(listAccToUpdate.size()>0 && listAccToUpdate!=NULL){
                    update listAccToUpdate;
                }
            }
        }
    }

*/
}