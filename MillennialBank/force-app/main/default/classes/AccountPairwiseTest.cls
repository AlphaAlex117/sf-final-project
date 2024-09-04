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
        acc.Name = (String)data[0];
        if (data[1] != null) {
            acc.Balance__c = (Decimal)data[1];
        }
        acc.RecordTypeId = (Id)data[2];
        acc.Email__c = (String)data[3];
        if (data[4] != null) {
            acc.Loan_Interest_Rate__c = (Decimal)data[4];
        }
        if (data[5] != null) {
            acc.Total_Loan_Amount__c = (Decimal)data[5];
        }
        acc.Active__c = (String)data[6];
        acc.Calculated_Interest__c = (Decimal)data[7];
        acc.Remaining_Loan_Amount__c = (Decimal)data[8];
            
        return acc;
   }

    
    
}