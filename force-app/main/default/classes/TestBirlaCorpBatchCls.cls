public class TestBirlaCorpBatchCls {
/*    
    @isTest
public class TestBatchInvoiceUpdate {
    @isTest
    public static void TestBatchInvoiceUpdateMethod()
    {
       
        Account acc= new Account();
        acc.Name='test';
        acc.Customer_code__c='567';
        acc.No_of_Days_OS__c = 0;
        acc.Overall_Outstanding_Balanace__c = 100;
        acc.Invoice_Actual_Invoiced_Quantity__c = 0;
        insert acc;
        
        
        Invoice__c inv = new Invoice__c();
        inv.SAP_Created_Date__c='Test';
        inv.PGI__c='Test1';
        inv.Customer__c = acc.id;
        inv.Net_Value_in_Document_Currency__c = 200;
        inv.Actual_Invoiced_Quantity__c=200;
        inv.Sold_to_party__c='party';
        inv.Billing_Document__c='bildoc';
        inv.Item_number_of_the_SD_document__c='Doc';
        inv.Material_Number__c='1234567';
        inv.SAP_Created_Date__c = String.valueOf(System.today()) ;
        inv.SAP_State__c='Madhya Pradesh';
        inv.SAP_District__c='Ratlam';
        inv.Plant_Code__c='BCW';
        inv.Dealer_Type__c='TR';
        inv.Actual_Material_Number__c='78685';
        inv.UniqueKey__c='un234';
        inv.Actual_Invoiced_Quantity__c=2000;
        inv.Invoice_Created_Date_SAP__c=system.today();        
        insert inv;
        
        Test.startTest();
        BatchInvoiceUpdate obj = new BatchInvoiceUpdate();
        DataBase.executeBatch(obj); 
        ScheduleBatchInvoiceUpdateCls sch = new ScheduleBatchInvoiceUpdateCls();
        String sc = '0 0 23 * * ?'; 
        system.schedule('Test Territory Check', sc, sch);
        Test.stopTest();
        
        
    }
    
}
*/
}