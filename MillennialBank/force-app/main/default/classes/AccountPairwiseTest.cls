/*
 * Contains pairwise tests.
 */
@isTest
public class AccountPairwiseTest {
	// 2D array where each sub-array contains the input for one test case
    List<List<Object>> testCaseData = new List<List<Object>> {
        new List<Object>{'', 50, Schema.SObjectType.Account.getRecordTypeInfosByName().get('Salary Account').getRecordTypeId(), 'test@example.com', 5, 100, true, null, null}
    };

    private static Account createAccountFromIndex(List<List<Object>> inputData, Integer index) {
        List<Object> data = inputData[index];
        
        Account acc = new Account();
        acc.Name = (String)data[2];
        if (data[3] != null) {
            acc.Balance__c = (Decimal)data[3];
        }
        acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get((String)data[4]).getRecordTypeId();
        if (data[5] != null) {
            acc.Calculated_Interest__c = (Decimal)data[5];
        }
        acc.Email__c = (String)data[6];
        if (data[8] != null) {
            acc.Loan_Interest_Rate__c = (Decimal)data[8];
        }
        acc.Loan_Type__c = (String)data[9];
        //acc.Remaining_Loan_Amount__c = {data[10]};
        if (data[11] != null) {
            acc.Total_Loan_Amount__c = (Decimal)data[11];
        }
        acc.Active__c = (String)data[12];
            
        return acc;
   }

    
    
}