public class BirlaCorpBatchCls {
    /*
     global class BatchInvoiceUpdate implements Database.Batchable<sObject>{
    
    //Returning the Invoices records in batches.
    global Database.QueryLocator start(Database.BatchableContext bc){
        //string Query = 'Select id from Invoice__c where CALENDAR_MONTH(Invoice_Created_Date_SAP__c)  =: Date.Today().Month() And CALENDAR_Year(Invoice_Created_Date_SAP__c)  =: Date.Today().Year()';
        return Database.getQueryLocator([Select id from Invoice__c where CALENDAR_MONTH(Invoice_Created_Date_SAP__c)  =: Date.Today().Month() And CALENDAR_Year(Invoice_Created_Date_SAP__c)  =: Date.Today().Year()]); 
    }
    
    //Executing the batches to update the list of Invoice records.
    global void execute(Database.BatchableContext bc,List<Invoice__c> invListUpdtae){
        if(invListUpdtae.size()>0 && invListUpdtae!=Null){
            update invListUpdtae;
            
        }
        
    }
    global void finish(Database.BatchableContext bc){
        
    }
}
*/
}