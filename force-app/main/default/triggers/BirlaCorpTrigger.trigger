trigger BirlaCorpTrigger on Account (before insert) {
   /* trigger InvoiceToUpdateFieldTrigger on Invoice__c (before insert , before update, After Insert, After update) {
    System.debug('InvoiceToUpdateFieldTrigger called');
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        if(InvoiceTriggerHelper.runOnce == true){
            // UPDATE INVOICE PLANT INFO
            InvoiceTriggerHelper.updatePlantInfo(trigger.New);
            
            // UPDATE INVOICE CREATED DATE FROM SAP CREATED DATE
            InvoiceTriggerHelper.updateDateFieldValue(trigger.New);
            
            // UPDATE ZONE INFO
            InvoiceTriggerHelper.updateInvoiceZone(trigger.new); 
            
            // UPDATE UNIQUEKEY IN INVOICE OBJECT
            InvoiceTriggerHelper.updateUniqueKeyInInvoice(trigger.New);
        }
        
        
        
    }
    
    if(trigger.isAfter && (trigger.isInsert || trigger.IsUpdate)){
        System.debug('runOnceAfter -- '+InvoiceTriggerHelper.runOnceAfter);
        if(InvoiceTriggerHelper.runOnceAfter == true){
            System.debug('runOnceAfter -- '+InvoiceTriggerHelper.runOnceAfter);
            InvoiceTriggerHelper.updateBudgetWithInvoiceQTY(trigger.New);
            InvoiceTriggerHelper.updateCurrentMonthQuantity(trigger.New);    
        }
        
        <---------------------------------- First Project Birla Corp--------------------------------------------------->

        // UPDATE or roll up the Net sales Value & Net Sales Qauntity of the current month IN SAP Customer OBJECT with the child Invoice's Net Value in Document Number of current month and year.
        if(InvoiceTriggerHelper.runOnceAfter2 == true){
            System.debug('runOnceAfter2 -- '+InvoiceTriggerHelper.runOnceAfter2);
            InvoiceTriggerHelper.updateCurrentMonthSalesQtyValue(trigger.New); 
        }
    }
}*/

}